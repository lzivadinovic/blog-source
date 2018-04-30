Ekvivalentna sirina spektralne linije 
################################################

:date: 2016-05-14 12:20
:slug: ew-linije 
:author: Lazar Zivadinovic 
:summary: Odredjivanje ekveivalentne sirine spektralne linije


Kod i ascii fajl možete skinuti možete skinuti ovde_.

.. _ovde: /code/ew.zip

Ekvivalentna širina linije predstavlja širinu pravougaonika koji ima istu površinu kao i linija. To je mera jačine linije.

Da bi odredili ekvivalentnu širinu apsorbcione linije, prvo je neophodno invertovati liniju (okrenuti je naopačke) zato što nam je tako lakše da integralimo. Pošto su naša merenja ekvidistanta (korak je konstantan), nije bilo potrebe interpolirati liniju, ali je to ipak urađeno zato što je zabavno. (pročitajte o interpolaciji na wikiju, koristio sam Cubic Spline metodu)


Koristio sam Simpsonovo pravilo za numeričku integraciju (google is your friend).

.. image:: /images/ew/simp.png
   :align: center

Iskreno, najveći problem u pisanju koda je bilo sređivanje osa. Za sve probleme tog tipa sam našao univerzalni lek, a to je:


google search : "how to do something in python site:stackoverflow"


Btw, rezultat je....

.. image:: /images/ew/EW.png
   :align: center
