1. sudo mkdir -p /etc/sv/cpupower-performance
2. sudo nano /etc/sv/cpupower-performance/run
	 `#!/bin/sh`
	`exec /home/kveld/Documentos/cositas-kveld/cpupower-performance.sh`
3. sudo ln -s /etc/sv/cpupower-performance /var/service/
4. sudo chmod +x /etc/sv/cpupower-performance/run
5. sudo chmod +x /home/kveld/Documentos/cositas-kveld/cpupower-performance.sh
6. sudo sv start cpupower-performance