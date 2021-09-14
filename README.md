# Enable/Disable intel turbo boost & set max cpu clock frequency

## enable/disable turbo boost :

```
./turbo-boost.sh [enable/disable]
```

## Set max cpu clock frequecy to avoid overheating or reduce fan noise

```
./max-cpu-clock.sh [max clock in hz (default 3500000=3.5GH)]
```

ex: `./max-cpu-clock.sh 2500000` set max cpu clock to 2.5 GH

## Add service to run at start up

add the 2 scripts to your path:

```
sudo ln -s $(pwd)/turbo-boost.sh /usr/local/bin/turbo-boost &&
sudo ln -s $(pwd)/max-cpu-clock.sh /usr/local/bin/max-cpu-clock
```

copy service file to /etc/systemd/system/ & enable it

```
sudo cp max-cpu-clock.service /etc/systemd/system/ &&
sudo systemctl daemon-reload &&
sudo systemctl enable max-cpu-clock.service &&
sudo systemctl start max-cpu-clock.service
```
