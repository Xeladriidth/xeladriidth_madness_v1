$library_path = "C:\Users\Erik\Documents\OpenSCAD\libraries"

$files = get-childitem -recurse -path $library_path | %{$_.FullName}

$denominator_array = @("frozen","complete","wip","unfinished")



foreach($single_file in $files) {

if($single_file.IndexOf("`.") -gt -1) {

$file_content = get-content -path $single_file

$file_index = 0

foreach($single_line in $file_content){

foreach($single_denominator in $denominator_array) {

if($single_line.IndexOf($single_denominator) -gt -1) {

write-host $single_line.IndexOf($single_denominator)

$file_index = 1

}

}

}

if($file_index -lt 1) {

write-host $file_index

add-content -path $single_file -value "//unfinished"

}

} }

#for all files (for-loop)

#for all lines (for-loop)

#for all denominators (for-loop)

#is the denominator available?

#if yes, set index to 1, close file (while-loop)

#if no, add-content "//unfinished"

foreach($single_denominator in $denominator_array) { 

new-variable -name $single_denominator,"_index" -value @()

#exists a file with that denominator index? if no, create

#if yes, set content to empty

#if(file with a name with the index as substring exists) {

#set-content -value "" -path $denominator_index_path

# if no such file exists:

#if(file with no such name exists) {

#new-item -path $denominator_index_path 

}

$file_list = get-childitem -path $library_path | %{$_.FullName}

foreach($file in $file_list) {

foreach($line in $file) {

foreach($single_denominator in $denominator_array) {

if(line.IndexOf($single_denominator) -gt -1) {



}

}

}

}




#create one array for each denominator

#create list of files

#check each file for denominator

#if denominator is found, add this file to the file of this denominator

#run through all files

#foreach($file)

#foreach($line)

#foreach($denominator)