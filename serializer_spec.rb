# frozen_string_literal: true

require 'minitest/autorun'
require 'yaml'

TSV_INFILE  = 'programmers_survey_2020.tsv'
TSV_OUTFILE = 'programmers_survey_2020.tsv2'
YML_INFILE  = 'programmers_survey_2020.yml'
YML_OUTFILE = 'programmers_survey_2020.yml2'

TSV_DATA = File.read(TSV_INFILE).split("\n")
YML_DATA = YAML.safe_load(File.read(YML_INFILE))

describe 'Serializer specs' do
  describe 'Test converstion from TSV to Yaml' do
    before do
      `ruby tsv_to_yml.rb #{TSV_INFILE} #{YML_OUTFILE}`
      @yml_output = YAML.safe_load(File.read(YML_OUTFILE))
    end

    it 'should match the first record' do
      tsv_record = TSV_DATA[1].split("\t")
      _(@yml_output[0]['date']).must_equal tsv_record[0]
      _(@yml_output[0]['student_id']).must_equal tsv_record[1]
      _(@yml_output[0]['languages']).must_equal tsv_record[2]
      _(@yml_output[0]['best_language']).must_equal tsv_record[3]
      _(@yml_output[0]['app_experience']).must_equal tsv_record[4]
      _(@yml_output[0]['tech_experience']).must_equal tsv_record[5]
    end

    it 'should match the number of records' do
      _(@yml_output.count).must_equal(TSV_DATA.count - 1)
    end
  end

  describe 'Test conversion from Yaml to TSV' do
    before do
      `ruby yml_to_tsv.rb #{YML_INFILE} #{TSV_OUTFILE}`
      @tsv_output = File.read(TSV_OUTFILE).split("\n")
    end

    it 'should match the first record' do
      tsv_record = @tsv_output[1].split("\t")
      _(tsv_record[0]).must_equal YML_DATA[0]['date']
      _(tsv_record[1]).must_equal YML_DATA[0]['student_id']
      _(tsv_record[2]).must_equal YML_DATA[0]['languages']
      _(tsv_record[3]).must_equal YML_DATA[0]['best_language']
      _(tsv_record[4]).must_equal YML_DATA[0]['app_experience']
      _(tsv_record[5]).must_equal YML_DATA[0]['tech_experience']
    end

    it 'should match the number of records' do
      _(@tsv_output.count).must_equal(YML_DATA.count + 1)
    end
  end

  after do
    `rm *.tsv2 > /dev/null 2>&1; rm *.yml2 > /dev/null 2>&1`
  end
end
