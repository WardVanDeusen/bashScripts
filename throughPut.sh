
#!/bin/bash
value ()
{
window=$((64*8*1024));
pingResults=$(ping -c 4 127.0.0.1 | awk -F '/' 'END {print $5}')
echo "((${window}/${pingResults})*.000001)" | bc | cut -c -5
}
value



