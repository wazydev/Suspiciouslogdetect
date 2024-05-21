#Dev by wayz 

Ce script à pour but unique de detecter les comportement anormaux dans les logs de serveur Web sous linux 
Ce code est Open-Source et est destiné à aider les Administrateur réseau

#Help mention

//installation : 
git clone https://github.com/wazydev/Suspiciouslogdetect.git
cd Suspiciouslogdetect
chmod 777 Suspiciouslogdetect
./Suspiciouslogdetect



//Pour le repertoire si vous avez changé le repertoire de sauvegarde veuillez également changer la ligne suivante : 
log_file_path = '/var/log/apache2/access.log'
