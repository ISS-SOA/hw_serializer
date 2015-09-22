# Serialization Showdown

## Download data

Download spreadsheet of student programming skills: `programmers_survey_2014.tsv`

Once you get to the Github page, you have to click the 'raw' button and download the file)
if your browser thinks this is a 'webarchive' file, please choose the format as 'page source' in the download options
this file has lines separated by newline characters ("\n") and each line has columns separated by tab characters ("\t")
Assignment:

Write a simple application that can converts a spreadsheet of students programming skills (TSV file: tab separated columns) into a YAML file.
Then write a simple application converts a YAML file back into a TSV file.

## 1. TSV to YAML:
Create an application file: tsv_to_yml.rb
Your YAML output should be saved into a YAML file of the user's choosing.
Let your Ruby program takes the name of input and output files from command line parameters:

You would run it like this:

`$  ruby TSV_to_YAML infile.tsv outfile.yml`

You can access command line parameters using the ARGV array (`ARGV[0]`, `ARGV[1]`).

If the user does not supply an output filename, please print output to screen.

You must submit your code as a Gist URL (use gist.github.com)
If you have done this correctly, each student in your output should look something like:
```
- date: 9/12/2014 20:20:55
 student_id: '1634'
 languages: 'Java, C , HTML , JavaScript , '
 best_language: Java
 app_experience: Native GUI applications, Web Applications, Mobile Applications,
 Database Driven Applications
 tech_experience: Unix-based OS, Database, Regular Expressions, Web Design
```

## 2. YAML to TSV:
Create another application that can converts a YAML skills file into a TSV file. You would run it like this:

`$  ruby yml_to_tsv infile.yml outfile.tsv`

Your generated TSV file should have the correct header information in the top row.

## 3. Testing

Double-check that your TSV and YAML files convert into each other. This is called round-tripping. I've provided two sample files called `programmers_survey_2014.csv` and `programmers_survey_2014.tsv` -- as you might guess, this is data from the SOA class survey taken in 2014.

To run automated tests on your code, you may do the following from command line, in the directory with all the files:
```
$ bundle install
(only need to run this once; bundle should report sucess)

$ ruby serializer_spec.rb
Run options: --seed 22740

# Running:

..

Finished in 0.208241s, 9.6043 runs/s, 9.6043 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips

```

Submit links to the two code files (gist) in the assignment submission form on Canvas
