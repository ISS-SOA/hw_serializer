require 'minitest/autorun'

describe 'Serializer specs' do
  it 'should convert tsv to yml' do
    `ruby tsv_to_yml.rb programmers_survey_2014.tsv programmers_survey_2014.yml2`
    `diff programmers_survey_2014.yml programmers_survey_2014.yml2`.must_equal ''
  end

  it 'should convert tsv to yml' do
    `ruby yml_to_tsv.rb programmers_survey_2014.yml programmers_survey_2014.tsv2`
    `diff programmers_survey_2014.tsv programmers_survey_2014.tsv2`.must_equal ''
  end

  after do
    `rm *.tsv2 > /dev/null 2>&1; rm *.yml2 > /dev/null 2>&1`
  end
end
