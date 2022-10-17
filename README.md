# NaruciPite
Aplikacija koja ce pomoci pri narucivanju pita iz pekare "Tusanj"
Potrebno je persistati usera, ukoliko se prvi put loguje prikazati view za unos licnih podataka
Ukoliko je user vec postojeci, (provjeriti pri pokretanju aplikacije), pokazati view sa listom svih pita iz pekare.
Na klik bilo koje pite, otvoriti novi view sa detaljima o piti, te omoguciti unos kolicine zeljene pite (npr. Burek 300g)
Zatim omoguciti povratak na view sa svim pitama.

Na kraju viewa gdje je lista pita, dodati button za placeanje ordera.
Klikom na taj button otvara se novi view, gdje pise koliko treba platiti pite, tj. total sum svega, te datum zeljene narudzbe.

Taj view takodjer treba imati button koji ce pozvati API za slanje sms poruke, ciji content treba izgenerisati koristeci unesene podatke ranije 
(IME, PREZIME, BR. TELEFONA, ADRESA, KOLICINA, ZA KADA JE NARUZBA)


Potvrdom na button prikazati view koji govori o uspjesno poslanoj narudzbi.

