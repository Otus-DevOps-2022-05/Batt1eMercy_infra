# Batt1eMercy_infra
Batt1eMercy Infra repository  

## Знакомство с облачной инфраструктурой и облачными сервисами
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
  
## Основные сервисы Yandex Cloud
VM:
```
testapp_IP = 51.250.81.50
testapp_port = 9292
```
Создание инстанса:  
```
 yc compute instance create \
 --name reddit-app \
 --hostname reddit-app \
 --memory=4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-
lts,size=10GB \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --ssh-key ~/.ssh/appuser.pub
 ```

## Модели управления инфраструктурой. Подготовка образов с помощью Packer 
  
Запуск сборки образа:  
```
packer build -var-file ./variables.json ./ubuntu16.json
```

## Знакомство с Terraform
  
Запуск:  
```
terraform apply
```