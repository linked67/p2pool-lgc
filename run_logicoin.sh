#!/bin/sh
SERVICE='python ./run_p2pool.py --net logicoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen  -m -S screenlgc python ./run_p2pool.py --net logicoin --give-author 0 --disable-upnp -f 1 -a LQRKxK1U8NLF6yrmJ6fMdoVj8HaaUyXRKh

	wait
fi
