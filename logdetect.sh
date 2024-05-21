#!/bin/bash

# Chemin vers le fichier de logs Apache
LOG_FILE="/var/log/apache2/access.log"

# Analyse des logs pour détecter les IP avec un nombre élevé de requêtes
ANOMALIES=$(awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -rn | awk '$1 > 1000 {print "IP " $2 " a " $1 " requêtes"}')

# Si des anomalies sont détectées, envoyer une notification par email
if [ ! -z "$ANOMALIES" ]; then
    echo "Des anomalies ont été détectées dans les logs Apache :"
    echo "$ANOMALIES"
    # Remplacer 'your@email.com' par votre adresse email
    echo "$ANOMALIES" | mail -s "Anomalies dans les logs Apache" your@email.com
fi
