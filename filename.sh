fullfile=$0
echo "Fullname of file $fullfile"
filename=$(basename "$fullfile")
echo "Filename : $filename"
extension="${filename##*.}"
echo "Extension of filename : $extension"
filename="${filename%.*}"
echo "Filename without extension : $filename"
