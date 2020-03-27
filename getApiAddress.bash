cd $(dirname $0)

[ ! -f /tmp/ngrok.log ] && exit

apiaddress=$(cat /tmp/ngrok.log|grep ngrok|jq .|grep opts|sed -r 's/^.*Hostname://'|sed -r 's/ .*$//')

truncate -s 100 /tmp/ngrok.log

echo 'https://'${apiaddress} > apiaddress.txt

git add -A
git commit -m 'fix api address'
git push origin master

