#/bin/bash
echo "<html><body><div style=\"font-family: Monospace; font-size:80pt; float:left; position:relative;top:50%;left:50%;transform:translate(-50%, -50%);\">" > ~/show.html
cp ~/vprotocol ~/vprotocoltmp
cat ~/vprotocoltmp | recode -f ascii..html | sed 's/\&\#0\;//g' | sed 's/\&\#65533\;//g' | sed 's/jk/\&lt;esc\&gt;/g' | sed 's/su$//' >> ~/show.html
echo "</h1></body></html>" >> ~/show.html
echo "" > ~/vprotocol
