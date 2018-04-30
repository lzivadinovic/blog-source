#!/bin/bash
clear
echo "Hello world."
echo "Ovo je neka moja shit skripta koja radi neke glupe stvari."
echo "Sibni nano da vidis sta tacno."
echo "A sad uzivaj."
echo "Nemoj da zaboravis sudo."
read -r -p "Da li mi stvarno dajes takvu moc? [Y/n] " response
response=${response,,}
if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" || $response == "" ]]
then
    add-apt-repository ppa:webupd8team/sublime-text-3 -y
    add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" -y
    add-apt-repository ppa:takluyver/matplotlib-daily -y #za matplotlib
    sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list"
    add-apt-repository ppa:colingille/freshlight -y
    sh -c "sed -i 's/trusty/saucy/g' /etc/apt/sources.list.d/colingille-freshlight-trusty.list"
    add-apt-repository ppa:xubuntu-dev/extras -y # dropbox za thunar
    add-apt-repository ppa:videolan/stable-daily -y
    apt-get update -y

    apt-get autoremove abiword gnumeric -y

    apt-get install sublime-text -y

    apt-get install nautilus-dropbox thunar-dropbox-plugin -y

    apt-get install guake gnuplot-nox qtiplot -y

    apt-get install cowsay fortune -y

    apt-get autoremove gmusicbrowser -y && apt-get install clementine -y

    apt-get install winusb unetbootin gparted -y
    apt-get install gcc g++ mpich2 mpich2-doc build-essential ppa-purge -y
    apt-get install openssh-server openssh-client -y
    apt-get install luvcview -y # ovo je za podesavanje osvetljenja kamere za rezoluciju se snadji :D
    apt-get install icedtea-7-plugin vlc -y
    apt-get install xubuntu-restricted-extras -y

    apt-get install python3 python3-numpy python3-scipy python3-pyfits python3-matplotlib -y
    apt-get install texmaker texlive -y
    apt-get install skype numlockx -y
    apt-get install conky-all comix -y
    apt-get install lm-sensors -y # dep za conky
    apt-get install saods9 -y
    apt-get install reptyr -y #prebacis vec aktivan proces u novi prozor terminala (eq, ako ti nesto radi na kompu, preko ssh mozes da prebacis na aktivan prozor)
    sed -i.bak 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_backlight=vendor"/g' /etc/default/grub
    #linija iznad sredjuje osvetljenje
    #ovo cudo ispod sredjuje MTP (media transfer protocol) - odnosi se na WP8.1 mount probleme

    echo ATTRS{idVendor}=="01b1", ATTRS{idProduct}=="01b1", SYMLINK+="libmtp", MODE="660", ENV{ID_MTP_DEVICE}="1" > /etc/udev/rules.d/69-libmtp.rules

    udevadm control --reload-rules

    update-grub

    apt-get upgrade -y
    apt-get dist-upgrade -y


    #Data_p
    #UUID=62A979950D98B6A7 /media/lazar/data_p   ntfs-3g defaults 0 0

    #hddcaddy
    #UUID=3DF665A572691A3D /media/lazar/hdd_caddy ntfs-3g defaults 0 0

    sed -i.bak '$a\#Data_p\nUUID=62A979950D98B6A7 /media/lazar/data_p   ntfs-3g defaults 0 0' /etc/fstab


    echo "Verovatno je sve ispalo kul."
    echo


    read -r -p "Hoces da reboot i da vidis sta i kako radi?[Y/n]" odg
    response=${odg,,} #,, oduzima poslednja dva karaktera u ovom slucaju \n

    if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" || $response == "" ]]
        then
            reboot
        else
            echo "Have fun then!"
    fi

else
    clear
    echo "Vidim, odustao si.. :'("
fi
