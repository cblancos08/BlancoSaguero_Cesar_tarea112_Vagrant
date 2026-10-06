#!/bin/bash

apt-get update -y
apt-get install -y apache2
systemctl enable apache2
systemctl start apache2
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Práctica Vagrant</title>
</head>
<body>
  <h1>Servidor Apache en Debian 12</h1>
  <p>Alumno: César Blanco Salguero</p>
  <p>Hostname: $(hostname)</p>
</body>
</html>
EOF