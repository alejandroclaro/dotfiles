function get_ext -d 'Get the file extension'
 set -l splits (string split "." $argv)
 echo $splits[-1]
end

