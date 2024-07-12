#!/bin/bash
    
    8  sudo fdisk /dev/sde
    9  sudo pvcreate /dev/sde
   10  sudo fdisk -l
   11  sudo pvcreate /dev/sde5
   12  sudo pvs
   13  sudo fdisk /dev/sdc
   14  sudo fdisk -l
   15  sudo fdisk /dev/sdc
   16  sudo fdisk -l
   17  sudo vgcreate vg_temp /dev/sde5
   18  sudo vgs
   19  sudo lvcreate -L +2G vg_temp -n lv_swap
   20  sudo lvcreate -L +100%FREE vg_temp -n lv_swap
   21  sudo lvcreate -l +100%FREE vg_temp -n lv_swap
   22  sudo fdisk /dev/sde
   23  sudo fdisk /dev/sdc
   24  sudo fdisk -l
   25  sudo pvcreate /dev/sde6 /dev/sdc1
   26  pvs
   27  sudo pvs
   28  sudo vgcreate vg_datos /dev/sdc1 /dev/sde6
   29  sudo vgs
   30  sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
   31  sudo lvcreate -L +10M vg_datos -n lv_docker
   32  mkfs.ext4 /dev/mapper/vg_datos/lv_docker
   33  sudo lvs
   34  mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   35  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   36  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
   37  sudo mkswap /dev/mapper/vg_temp-lv_swap
   38  free -h
   39  sudo swapon /dev/mapper/vg_temp-lv_swap
   40  free -h
   41  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
   42  cd /
   43  ll
   44  sudo mkdir /Multimedia/
   45  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
   46  sudo lsbl -f
   47  sudo lsblk -f
   48  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   49  sudo lsblk -f
   50  cd /var/lib/
   51  cd docker
   52  ll
   53  sudo systemctl restart docker
   54  sudo ls
   55  sudo systemctl status docker


  204  sudo fdisk /dev/sdd
  206  sudo fdisk -l
  208  sudo pvcreate /dev/sdd1




echo "comandos punto A"
