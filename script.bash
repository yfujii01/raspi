cd /home/pi/environment/github.com/yfujii01/raspi;
ip -4 a show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' > ipaddress.txt;
date > date.txt;
git add -A;
git commit -m 'update ipaddress';
git push --all;

