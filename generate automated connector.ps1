$path = "C:\Users\Erik\Documents\OpenSCAD\libraries\"

set-content -path "$path\master_connector_automated.scad" -value ""

$files_raw = Get-ChildItem  -Path "$path"  -Recurse | where {$_.extension -eq ".scad"} |  Select -Expand FullName

foreach($file in $files_raw) {

set-variable -name "file_string" -value $file

$line = $file_string.Substring(43,$file_string.Length - 43)

$line = "use `<$line`>"

add-content -value $line -path "$path\master_connector_automated.scad"

}

$slash = "`\"

#(get-content -path "$path\master_connector_automated.scad") -replace '$slash','/'

invoke-item "$path\master_connector_automated.scad"

<#

foreach ($file in $files_raw){

write-host $file.Substring(20,$file.Length -20)

}

#>

#add-content -path "$path\master_connector_automated.scad" -value $line.Substring

# invoke-item "$path\master_connector_automated.scad"//unfinished
