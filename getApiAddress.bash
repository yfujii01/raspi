cd $(dirname $0)

apiaddress=$(cat /tmp/ngrok.log|grep ngrok|jq .|grep opts|sed -r 's/^.*Hostname://'|sed -r 's/ .*$//')

if [ -z "$apiaddress" ]; then
  return
fi

rm /tmp/ngrok.log

echo 'https://'${apiaddress} > apiaddress.txt

git add -A
git commit -m 'fix api address'
git push origin master

