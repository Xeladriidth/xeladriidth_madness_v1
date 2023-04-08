$pattern = "is_array"

$manifesto = "C:\Users\Erik\documents\openscad\libraries\mainfesto.txt"

$library_path = "C:\users\erik\documents\openscad\libraries"

$file_list = get-childitem -recurse $library_path

$location_list = get-location $library_path -recurse

foreach ($file in $file_list) {

#select-string -pattern "is_array" -path "C:\Users\erik\documents\openscad\libraries\$file" | add-content "C:\users\erik\documents\openscad\libraries\contains is_array.txt"
write-host $file

}

foreach($path in $location_list ) {
write-host $path
select-string -pattern $pattern -path $path 
}