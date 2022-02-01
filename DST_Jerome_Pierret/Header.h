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
	char dateRécoltePrévue;
	int surface;
};

class EspèceCultivée {
public:
	EspèceCultivée();
	int id;
	char libelle;
	char type;
};

class TraitementPhytosanitaire {
public:
	quantitéAppliquée();
	int id;

};

class ProduitPhytoSanitaire {
public:
	int id;
	char libelle;
};

class TraitementEnChamp {
private:
	quantitéAppliquée();
};

class Pulverisation {
public:
	int id;
	int dosage;
	int datePulvérisation;
};

class TraitementSemence {
public:
	dosageTraitementSemence();

private:
	quantitéAppliquée();
};
