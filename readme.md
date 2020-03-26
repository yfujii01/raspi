# raspi

## 概要

raspiのip addressをipaddress.txtに書き出す

## 設定方法

### git clone

```sh
mkdir /home/pi/environment/github.com/yfujii01
cd /home/pi/environment/github.com/yfujii01
git clone git@github.com:yfujii01/raspi.git
```

### スケジュール設定

下記の例では1分毎に起動する

```sh
crontab -e
```

```cron
*/1 * * * * bash /home/pi/environment/github.com/yfujii01/raspi/script.bash
```

