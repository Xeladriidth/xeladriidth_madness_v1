$path = "C:\Users\Erik\Documents\OpenSCAD\libraries\"

$files = Get-ChildItem  -Path "$path"  -Recurse | where {$_.extension -eq ".scad"} |  Select -Expand FullName

foreach ($file in $files) {

write-host $file
(get-content $file).Length

}

foreach($file in $files) {

$length = (get-content $file).Length

if ($length -eq 0) {

invoke-item -path "$file"

}
}

//unfinished
