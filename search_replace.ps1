$library_path = "C:\Users\Erik\Documents\OpenSCAD\libraries"

$file_list = get-childitem -path $library_path -recurse | %{$_.FullName}

$target = read-host -prompt "enter target to replace"

$target_length = $target.Length

$replacement = read-host -prompt "enter replacement"

$replacement_length = $replacement.Length

foreach($file in $file_list) { if($file.IndexOf("`.") -gt -1) {

$content = get-content -path $file 

$line_index = 0

foreach($line in $file) {

if($line.IndexOf($target) -gt -1) {

#concat the new line

#write-host /write new line to file

}

}}