x=0
while [ $x -le 4 ]
do
        uptime_since=`uptime | cut -f 2 -d " " | cut -f 1 -d :`
        down_time=`date | cut -f 4 -d " " | cut -f 1 -d :`
        x=`expr $uptime_since - $down_time`
done
sudo shutdown -h +5 "system is going to shutdown in 5 minutes, please save your work";
