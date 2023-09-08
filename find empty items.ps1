$path = "C:\Users\Erik\Documents\OpenSCAD\libraries\"

set-content -path "$path\empty_files.txt" -value ""

$files = get-childitem -path $path -recurse

foreach($file in $files) {
if ($file.Length -eq 0) {

add-content -path "$path\empty_files.txt" -value $file

}
}

invoke-item "$path\empty_files.txt"//unfinished
//unfinished
/*unfinished*/
