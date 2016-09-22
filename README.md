# Serialization Showdown

## Download files

Download all the files in this repository using the green 'Clone or download' button. You may download the whole repo as a ZIP file and then unzip it in your working directory.

**Assignment:**

You will write two small ruby applications in this assignment. First, write a simple application that convert a spreadsheet of students programming skills (TSV file: tab separated columns) into a YAML file. Second, write a simple application converts a YAML file back into a TSV file. Take a look at the two files called `programmers_survey_2014.*` to see examples of these two file formats. Please read all the following instructions before starting.

## 1. TSV to YAML:
Create an application file: tsv_to_yml.rb
This file should have a script that converts a TSV file into a YAML file. Your YAML output should be saved into a YAML file of the user's choosing.
Let your Ruby program takes the name of input and output files from command line parameters:

You would run it like this:

`$  ruby tsv_to_yml.rb programmers_survey_2014.tsv outfile.yml`

You can access command line parameters using the `ARGV` array (`ARGV[0]`, `ARGV[1]`).

If the user does not supply an output filename, please print output to screen.

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

You must submit your code file as a Gist URL (use gist.github.com).

## 2. YAML to TSV:
Create another application that can converts a YAML skills file into a TSV file. You would run it like this:

`$  ruby yml_to_tsv.rb programmers_survey_2014.yml outfile.tsv`

Your generated TSV file should have the correct header information in the top row.

You must submit your code file as a Gist URL (use gist.github.com).

## 3. Testing

Throughout your coding, you should run automated tests on your code, you may do the following from command line, in the directory with all the files:
```
$ bundle install
(only need to run this once; bundle should report success)

$ ruby serializer_spec.rb
Run options: --seed 22740

# Running:

..

Finished in 0.208241s, 9.6043 runs/s, 9.6043 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips

```

Submit links to the two code files (gist) in the assignment submission form on Canvas
