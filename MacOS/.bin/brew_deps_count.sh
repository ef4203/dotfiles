for i in $(brew deps --installed | sed 's/\:.*//g'); do echo $i - $(brew deps --installed | grep $i | wc -l); done
