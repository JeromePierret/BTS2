#pragma once

class Exploitation
public:
	Exploitation();
	int id;
	char nomExploitant;
	char melExploitant;
};

class Parcelle {
public:
	Parcelle();
	int id;
	char dateSemis;
	char dateR�coltePr�vue;
	int surface;
};

class Esp�ceCultiv�e {
public:
	Esp�ceCultiv�e();
	int id;
	char libelle;
	char type;
};

class TraitementPhytosanitaire {
public:
	quantit�Appliqu�e();
	int id;

};

class ProduitPhytoSanitaire {
public:
	int id;
	char libelle;
};

class TraitementEnChamp {
private:
	quantit�Appliqu�e();
};

class Pulverisation {
public:
	int id;
	int dosage;
	int datePulv�risation;
};

class TraitementSemence {
public:
	dosageTraitementSemence();

private:
	quantit�Appliqu�e();
};
