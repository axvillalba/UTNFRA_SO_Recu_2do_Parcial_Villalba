  155  cd UTN-FRA_SO_Examenes/202407_Recu/docker/
  156  ll
  157  cd web/
  158  ll
  159  cat index.html
  160  vim index.html
  161  vim dockerfile
  170  sudo docker build -t axvillalba/dockerfile:v1 .
  171  sudo fdisk -l
  172  sudo pvs
  173  sudo vgs
  174  sudo lsblk -f
  179  sudo fdisk /dev/sdd
  180  sudo pvcreate /dev/sdd2
  181  sudo vgextend vg_datos /dev/sdd2
  184  sudo lvextend -L +400M /dev/mapper/vg_datos-lv_docker
  186  sudo resize2fs /dev/mapper/vg_datos-lv_docker
  187  sudo docker build -t axvillalba/dockerfile:v1 .
  188  docker image list
  189  sudo docker image list
  190  docker push axvillalba/dockerfile:v1
  191  sudo docker push axvillalba/dockerfile:v1
  192  su - axvillalba
  193  cd UTN-FRA_SO_Examenes/202407_Recu/docker/
  194  docker push axvillalba/dockerfile:v1
 
  223  cd ..
  224  ll
  225  cd UTN-FRA_SO_Examenes/
  226  ll
  227  cd 202407_Recu/docker
  228  ll
  229  cd web
  230  ll
  231  cd file
  232  ll
  233  vim info.txt
  236  vim info.txt
  240  sudo chmod 777 info.txt
  241  lscpu | grep 'Model name' | awk -F': ' '{print "CPU MODELO: " $2}' > info.txt
  242  vim info.txt
  245  lscpu | grep 'CPU MHz' | awk -F': ' '{print "Frecuencia: " $2}' >> info.txt
  246  vim info.txt
  247  lscpu | grep 'Model name\|CPU MHz'
  248  lscpu
 
  256  vim docker-compose.yml
  261  docker push axvillalba/dockerfile:v1

