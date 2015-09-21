# Serialization Showdown

## Download data

Download spreadsheet of student programming skills: `programmers_survey_2014.tsv`

Once you get to the Github page, you have to click the 'raw' button and download the file)
if your browser thinks this is a 'webarchive' file, please choose the format as 'page source' in the download options
this file has lines separated by newline characters ("\n") and each line has columns separated by tab characters ("\t")
Assignment:

Write a simple application that can converts a spreadsheet of students programming skills (TSV file: tab separated columns) into a YAML file.
Then write a simple application converts a YAML file back into a TSV file.

## TSV_to_YAML:
Create an application file: TSV_to_YAML.rb
Your YAML output should be saved into a YAML file of the user's choosing.
Let your Ruby program takes the name of input and output files from command line parameters:

e.g., in Unix, you should be able to do:  `$  ruby TSV_to_YAML in_filename.tsv out_filename.yml`

You can access command line parameters using the ARGV array: `ARGV[0]`, `ARGV[1]`, etc.

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

## YAML_to_TSV:
Create another application that can converts a YAML skills file into a TSV file!

Your generated TSV file should have the correct header information in the top row.

Double-check: do your TSV and YAML files convert into each other? (this is called round-tripping)

Put a link to this code file (gist) in a comment on the top of your main application
