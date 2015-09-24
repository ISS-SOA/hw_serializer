require 'minitest/autorun'
require 'yaml'

TEST_RECORDS = 22

describe 'Serializer specs' do
  it 'should convert yml to tsv' do
    `ruby tsv_to_yml.rb programmers_survey_2014.tsv programmers_survey_2014.yml2`
    yml_output = YAML.load(File.read('programmers_survey_2014.yml2'))
    yml_output.count.must_equal TEST_RECORDS
  end

  it 'should convert tsv to yml' do
    `ruby yml_to_tsv.rb programmers_survey_2014.yml programmers_survey_2014.tsv2`
    tsv_output = File.read('programmers_survey_2014.tsv2').split("\n")
    tsv_output.count.must_equal(TEST_RECORDS + 1)
  end

  it `should roundtrip results` do

  end

  after do
    `rm *.tsv2 > /dev/null 2>&1; rm *.yml2 > /dev/null 2>&1`
  end
end
