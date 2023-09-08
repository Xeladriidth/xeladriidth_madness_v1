$library_path = "C:\Users\Erik\Documents\OpenSCAD\libraries"

$files = get-childitem -recurse -path $library_path | %{$_.FullName}

$denominator_array = @("frozen","complete","wip","unfinished")



foreach($single_file in $files) {

if($single_file.IndexOf("`.") -gt -1) {

$file_content = get-content -path $single_file

$file_index = 0

foreach($single_line in $file_content){

foreach($single_denominator in $denominator_array) {

if($single_line.IndexOf($single_denominator -gt -1) ) {

write-host $single_line.IndexOf($single_denominator)

$file_index = 1

}

}

}

if($file_index -lt 1) {

add-content -path $single_file -value "//"

}

} }

$denominator_array = @("frozen","complete","wip","unfinished")

foreach($single_denominator in $denominator_array) { 

write-host $single_denominator+"_index"

new-variable -name $single_denominator,"_array" -value @()

}