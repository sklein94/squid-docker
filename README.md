## Einrichtung
Zum Starten des Proxy-Servers mit den richtigen Einstellungen einfach die `run.sh` ausführen.

Sollte der anonyme Zugriff gewünscht sein, in der beiliegenden squid.conf einfach die Zeile `#http_access allow all` einkommentieren.

## Zugangsdaten proxy:

username: admin

password: adminpw

## Zugriff aufs log
Mit `docker exec -it squid tail -f /var/log/squid/access.log` kann auf das access-log des proxy-servers zugegriffen werden.
