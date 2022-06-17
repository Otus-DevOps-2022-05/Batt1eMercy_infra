# Batt1eMercy_infra
Batt1eMercy Infra repository  

VM:
```
bastion_IP = 51.250.2.104
someinternalhost_IP = 10.128.0.31
```
Подключение через jump в одну команду: `ssh -i ~/.ssh/appuser -J appuser@<bastion-ip> appuser@<someinternal-ip>  `
  
Подключение с использованием алиаса: 
* Добавить файл .ssh/config c содержимым:
```
Host someinternalhostHostname <someinternal-ip>    
User appuser    
ForwardAgent yes  
ProxyJump appuser@<bastion-ip>
```
* Выполнить: `ssh someinternalhost`

