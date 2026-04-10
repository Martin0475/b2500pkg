# Befehle hier einfügen
mkdir /config/packages/b2500pkg
mkdir /config/packages/b2500pkg/automations

rm -f /config/packages/b2500pkg/automations/request_infos.yaml
rm -f /config/packages/b2500pkg/automations/repost_cd01_cd13.yaml

rm -f /config/packages/b2500pkg/automations/b01_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b02_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b03_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b04_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b05_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b06_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b07_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b08_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b09_sensor_discovery.yaml

rm -f /config/packages/b2500pkg/automations/b01_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b02_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b03_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b04_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b05_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b06_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b07_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b08_cd16_sensor_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b09_cd16_sensor_discovery.yaml

rm -f /config/packages/b2500pkg/automations/b01_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b02_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b03_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b04_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b05_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b06_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b07_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b08_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b09_voltage_discovery.yaml

rm -f /config/packages/b2500pkg/automations/b01e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b02e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b03e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b04e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b05e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b06e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b07e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b08e1_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b09e1_voltage_discovery.yaml

rm -f /config/packages/b2500pkg/automations/b01e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b02e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b03e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b04e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b05e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b06e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b07e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b08e2_voltage_discovery.yaml
rm -f /config/packages/b2500pkg/automations/b09e2_voltage_discovery.yaml

rm -f /config/packages/b2500pkg/automations/set_timer.yaml
rm -f /config/packages/b2500pkg/automations/set_outputs.yaml
rm -f /config/packages/b2500pkg/automations/set_dod.yaml
rm -f /config/packages/b2500pkg/automations/set_charging_mode.yaml
rm -f /config/packages/b2500pkg/automations/set_smartmeter.yaml
rm -f /config/packages/b2500pkg/automations/set_surplus.yaml
rm -f /config/packages/b2500pkg/automations/mqtt_publish.yaml
rm -f /config/packages/b2500pkg/automations/test_config.yaml
rm -f /config/packages/b2500pkg/automations/zeropower.yaml
rm -f /config/packages/b2500pkg/automations/send_restart.yaml
rm -f /config/packages/b2500pkg/automations/low_voltage_protection.yaml
rm -f /config/packages/b2500pkg/automations/worker_script.yaml
rm -f /config/packages/b2500pkg/automations/speicherliste_aktualisieren.yaml

rm -f /config/packages/b2500pkg/b2500pkg_input.yaml
rm -f /config/b2500pkg_templates.yaml

mkdir /config/dashboards
rm - f /config/dashboards/b2500pkg_dashboard.yaml

sleep 5

test ! -f "/config/packages/b2500pkg/basic_settings.yaml" && wget -q -O /config/packages/b2500pkg/basic_settings.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/basic_settings.yaml
wget -q -O /config/packages/b2500pkg/automations/request_infos.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/request_infos.yaml
wget -q -O /config/packages/b2500pkg/automations/repost_cd01_cd13.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/repost_cd01_cd13.yaml

wget -q -O /config/packages/b2500pkg/automations/b01_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b01_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b02_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b02_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b03_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b03_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b04_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b04_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b05_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b05_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b06_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b06_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b07_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b07_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b08_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b08_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b09_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b09_sensor_discovery.yaml

wget -q -O /config/packages/b2500pkg/automations/b01_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b01_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b02_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b02_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b03_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b03_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b04_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b04_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b05_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b05_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b06_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b06_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b07_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b07_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b08_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b08_cd16_sensor_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b09_cd16_sensor_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b09_cd16_sensor_discovery.yaml

wget -q -O /config/packages/b2500pkg/automations/b01_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b01_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b02_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b02_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b03_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b03_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b04_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b04_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b05_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b05_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b06_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b06_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b07_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b07_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b08_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b08_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b09_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b09_voltage_discovery.yaml

wget -q -O /config/packages/b2500pkg/automations/b01e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b01e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b02e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b02e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b03e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b03e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b04e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b04e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b05e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b05e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b06e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b06e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b07e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b07e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b08e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b08e1_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b09e1_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b09e1_voltage_discovery.yaml

wget -q -O /config/packages/b2500pkg/automations/b01e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b01e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b02e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b02e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b03e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b03e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b04e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b04e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b05e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b05e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b06e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b06e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b07e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b07e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b08e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b08e2_voltage_discovery.yaml
wget -q -O /config/packages/b2500pkg/automations/b09e2_voltage_discovery.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/b09e2_voltage_discovery.yaml

wget -q -O /config/packages/b2500pkg/automations/set_timer.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_timer.yaml
wget -q -O /config/packages/b2500pkg/automations/set_outputs.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_outputs.yaml
wget -q -O /config/packages/b2500pkg/automations/set_dod.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_dod.yaml
wget -q -O /config/packages/b2500pkg/automations/set_charging_mode.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_charging_mode.yaml
wget -q -O /config/packages/b2500pkg/automations/set_smartmeter.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_smartmeter.yaml
wget -q -O /config/packages/b2500pkg/automations/set_surplus.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/set_surplus.yaml
wget -q -O /config/packages/b2500pkg/automations/mqtt_publish.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/mqtt_publish.yaml

wget -q -O /config/packages/b2500pkg/automations/test_config.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/test_config.yaml
wget -q -O /config/packages/b2500pkg/automations/zeropower.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/zeropower.yaml
wget -q -O /config/packages/b2500pkg/automations/send_restart.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/send_restart.yaml
wget -q -O /config/packages/b2500pkg/automations/low_voltage_protection.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/low_voltage_protection.yaml
wget -q -O /config/packages/b2500pkg/automations/worker_script.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/worker_script.yaml
wget -q -O /config/packages/b2500pkg/automations/speicherliste_aktualisieren.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/speicherliste_aktualisieren.yaml

wget -q -O /config/packages/b2500pkg/b2500pkg_input.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/b2500pkg_input.yaml
wget -q -O /config/packages/b2500pkg/b2500pkg_templates.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/b2500pkg_templates.yaml



wget -q -O /config/dashboards/b2500pkg_dashboard.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/dashboards/b2500pkg_dashboard.yaml

