/*
	creazione delle tabelle per la web app
*/

CREATE TABLE palestre(
	Id int primary key,
    Nome varchar(30),
    Indirizzo varchar(20),
    Email varchar(30),
    proprietario int,
    Telefono varchar(30),
	FOREIGN KEY(proprietario) REFERENCES utenti(Id)
);

CREATE TABLE utenti(
	Id int primary key,
    Nome varchar(10),
    Cognome varchar(20),
    Email varchar(30),
    Telefono varchar (13),
    Tampone	bool,
    Ruolo enum ('Cliente', 'Gestore', 'Istruttore')
    
);

ALTER table utenti ADD COLUMN IdPalestre int;
ALTER TABLE UTENTI
ADD FOREIGN KEY (IdPalestre) references palestre(Id);


CREATE TABLE locali(
	Id int primary key,
    Nome varchar(15),
    mq int,
    IdPalestra int,
    FOREIGN KEY(IdPalestra) REFERENCES palestre(Id) 
);

CREATE TABLE corsi(
	Id int primary key,
    Nome varchar(15),
    Persone_consentite int,
    Istruttore int,
    Descrizione varchar(50),
    Locale int,
    FOREIGN KEY(Istruttore) REFERENCES utenti(Id),
    FOREIGN KEY(Locale) REFERENCES locali(Id)
);




CREATE TABLE prenotazioni(
	giorno date primary key,
    ora datetime primary key,
    FOREIGN key(IdUtente) REFERENCES utenti(Id),
    FOREIGN key(IdCorso) REFERENCES corsi(Id)
);



