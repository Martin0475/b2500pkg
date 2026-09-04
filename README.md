# B2500PKG for Home Assistant

Dieses Paket enthält:
- MQTT-Sensoren für bis zu 9 B2500-Geräte oder 8 B2500 und 1 Venus
- Automationen zur Steuerung und Konfiguration
- Helfer-Elemente (Inputs)
- YAML-Dashboard zur einfachen Übersicht

## 🔧 Manuelle Installation
1. Erstelle einen Ordner `packages` im selben Verzeichniss in dem sich die `configuration.yaml` befindet.
2. Lade die Datei `b2500pkg_update.yaml` herunter und kopiere sie in den soeben erstellten Ordner `packages`.
3. Ergänze in deiner `configuration.yaml`:

```yaml

homeassistant:
  packages: !include_dir_named packages

```

4. Starte Home Assistant neu.
5. Nach dem Neustart sollte ein Script namens `B2500PKG Update` verfügbar sein.
   Hiermit kann die aktuelle Version heruntergeladen werden.
6. Bei Verwendung mehrerer B2500 benötigt jeder seinen eigenen MQTT Zugang. (Einstellbar in der Konfiguration von Mosquitto)

