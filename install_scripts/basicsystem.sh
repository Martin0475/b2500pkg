# ============================================================
# Verzeichnisse anlegen, falls nicht vorhanden
# ============================================================

[ ! -d "/config/packages/b2500pkg" ] && mkdir /config/packages/b2500pkg
[ ! -d "/config/packages/b2500pkg/automations" ] && mkdir /config/packages/b2500pkg/automations
[ ! -d "/config/dashboards" ] && mkdir /config/dashboards


# ============================================================
# Veraltete Dateien löschen
# Vollständiger Pfad, da diese nicht mehr heruntergeladen werden
# ============================================================

while IFS= read -r file; do
    [ -n "$file" ] && rm -f "$file"
done <<'EOF'
/config/packages/b2500pkg/automations/b01_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b02_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b03_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b04_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b05_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b06_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b07_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b08_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b09_sensor_discovery.yaml

/config/packages/b2500pkg/automations/b01_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b02_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b03_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b04_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b05_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b06_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b07_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b08_cd16_sensor_discovery.yaml
/config/packages/b2500pkg/automations/b09_cd16_sensor_discovery.yaml

/config/packages/b2500pkg/automations/b01_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b02_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b03_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b04_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b05_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b06_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b07_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b08_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b09_voltage_discovery.yaml

/config/packages/b2500pkg/automations/b01e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b02e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b03e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b04e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b05e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b06e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b07e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b08e1_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b09e1_voltage_discovery.yaml

/config/packages/b2500pkg/automations/b01e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b02e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b03e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b04e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b05e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b06e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b07e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b08e2_voltage_discovery.yaml
/config/packages/b2500pkg/automations/b09e2_voltage_discovery.yaml

/config/packages/b2500pkg/automations/delete_discovery.yaml

EOF

exit 1
# ============================================================
# Aktuelle Dateien direkt in b2500pkg
# ============================================================

FILES_B2500PKG='
b2500pkg_input.yaml
b2500pkg_templates.yaml
'


# ============================================================
# Aktuelle Dateien in b2500pkg/automations
# ============================================================

FILES_AUTOMATIONS='
request_infos.yaml
repost_cd01_cd13.yaml
mqtt_discovery_script.yaml
set_timer.yaml
set_outputs.yaml
set_dod.yaml
set_charging_mode.yaml
set_smartmeter.yaml
set_surplus.yaml
mqtt_publish.yaml
test_config.yaml
zeropower.yaml
send_restart.yaml
low_voltage_protection.yaml
worker_script.yaml
speicherliste_aktualisieren.yaml
'


# ============================================================
# Aktuelle Dateien löschen
# ============================================================

printf '%s\n' "$FILES_B2500PKG" | while IFS= read -r file; do
    [ -n "$file" ] && rm -f "/config/packages/b2500pkg/$file"
done

printf '%s\n' "$FILES_AUTOMATIONS" | while IFS= read -r file; do
    [ -n "$file" ] && rm -f "/config/packages/b2500pkg/automations/$file"
done

rm -f /config/dashboards/b2500pkg_dashboard.yaml


sleep 5


# ============================================================
# basic_settings.yaml unverändert
# ============================================================

test ! -f "/config/packages/b2500pkg/basic_settings.yaml" && wget -q -O /config/packages/b2500pkg/basic_settings.yaml https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/basic_settings.yaml


# ============================================================
# Dateien direkt nach b2500pkg laden
# ============================================================

printf '%s\n' "$FILES_B2500PKG" | while IFS= read -r file; do
    [ -n "$file" ] && wget -q \
        -O "/config/packages/b2500pkg/$file" \
        "https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/$file"
done


# ============================================================
# Automationen laden
# ============================================================

printf '%s\n' "$FILES_AUTOMATIONS" | while IFS= read -r file; do
    [ -n "$file" ] && wget -q \
        -O "/config/packages/b2500pkg/automations/$file" \
        "https://raw.githubusercontent.com/Martin0475/b2500pkg/main/packages/b2500pkg/automations/$file"
done


# ============================================================
# Dashboard
# ============================================================

wget -q \
    -O /config/dashboards/b2500pkg_dashboard.yaml \
    https://raw.githubusercontent.com/Martin0475/b2500pkg/main/dashboards/b2500pkg_dashboard.yaml
