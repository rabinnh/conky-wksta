sleep 5s
killall conky
cd "/home/rbross/.conky"
conky -c "/home/rbross/.conky/mainrc" &
cd "/home/rbross/.conky"
conky -c "/home/rbross/.conky/rings" &
cd "/home/rbross/.conky"
conky -c "/home/rbross/.conky/syslog" &
