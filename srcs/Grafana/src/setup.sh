#!bin/sh
rc-service telegraf start

cd grafana && ./bin/grafana-server

sleep 5
while sleep 2;
    do
        pgrep telegraf > /dev/null
        telegraf_status=$?
        if [ $telegraf_status  -ne 0 ]; then
            echo "Telegraf service is not running ..."
            exit 1
        fi
        pgrep grafana-server > /dev/null
        grafana_status=$?
        if [ $grafana_status  -ne 0 ]; then
            echo "Grafana is not running ..."
            exit 1
        fi
    done