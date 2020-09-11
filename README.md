# Instructions

Run the default task to build and export all views to CSV (gzip).

```bash
$ export PGHOST=127.0.0.1
$ export PGPORT=5432
$ make
```

# About
Retrospective study of adamantane derivatives as neuroprotectants post-CVA.

![Adamantane [PubChem CID: 9238]](https://pubchem.ncbi.nlm.nih.gov/image/imgsrv.fcgi?cid=9238&t=s)

## Central NMDA Receptor Physiology
mGluR5-Ca2+ apoptosis					
- [KEGG Network: N00984](https://www.genome.jp/dbget-bin/www_bget?ne:N00984)				
- [KEGG Pathway: hsa04724](https://www.genome.jp/kegg-bin/show_pathway?hsa04724+N00984)				

Hippocampal long-tem potentiation				
- [KEGG Pathway: hsa04720](https://www.genome.jp/dbget-bin/www_bget?hsa04720)				

<p>
	<img src='img/kegg-hsa04720.png' width='350px'>
</p>

## Memantine Pharmacodynamics

https://www.drugbank.ca/drugs/DB01043

![Memantine [PubChem CID: 4054]](https://pubchem.ncbi.nlm.nih.gov/image/imgsrv.fcgi?cid=4054&t=s)

### Central activity

#### Glutamateric:
- Low-affinity voltage-dependent non-competitive antagonist at glutamatergic NMDA receptors
- NMDAR antagonist with higher affinity than Mg++, ultimatly inhibits prolonged Ca++ influx
#### Serotonergic:
- Non-competitive antagonist at 5-HT3 receptor, potency similar to that for the NMDA receptor
#### Cholinergic:
- Non-competitive antagonist at nAChRs with potencies possibly similar to NMDA and 5-HT3 receptors
#### Dopaminergic:
- Agonist at D2 receptor with equal or slightly higher affinity than NMDA receptors
#### Sigmaergic:
- Agonist at Sigma-1 receptor with low Ki ~= 2.6 μM (2600 nM)
- Therapeutic concentrations of memantine are most likely too low to have any sigmaergic effect, as a typical therapeutic dose is 20mg.
- Excessive doses of memantine (e.g. recreational use) may indeed activate Sigma-1
	- https://erowid.org/experiences/subs/exp_Pharms_Memantine.shtml

### ADME Kinetics

Drugs@FDA: [Namenda® Tablets/Oral Solution (memantine hydrochloride)](https://www.accessdata.fda.gov/drugsatfda_docs/label/2005/021627lbl.pdf)

Memantine is well absorbed after oral administration and has linear pharmacokinetics over the
therapeutic dose range. It is excreted predominantly in the urine, unchanged, and has a terminal
elimination half life of about 60-80 hours.

Following oral administration memantine is highly absorbed with peak concentrations reached in
about 3-7 hours. Food has no effect on the absorption of memantine. The mean volume of
distribution of memantine is 9-11 L/kg and the plasma protein binding is low (45%). 

Majority (57-82%) of administered dose is excreted unchanged in urine; the remainder is converted primarily to three polar metabolites: 

- N-gludantan conjugate
- 6-hydroxy memantine
- 1-nitroso-deaminated memantine

These metabolites possess minimal NMDA receptor antagonist activity. Memantine has a terminal elimination half-life of about 60-80 hours. Renal clearance involves
active tubular secretion moderated by pH dependent tubular reabsorption.

### Cytochrome P450 2B6

Micuda S, Mundlova L, Anzenbacherova E, Anzenbacher P, Chladek J, Fuksa L, Martinkova J: *Inhibitory effects of memantine on human cytochrome P450 activities: prediction of in vivo drug interactions*. Eur J Clin Pharmacol. 2004 Oct;60(8):583-9. doi: [10.1007/s00228-004-0825-1](http://doi.org/10.1007/s00228-004-0825-1). Epub 2004 Sep 16. [PubMed:15378224]

A cytochrome P450 monooxygenase ([CYP2B6](https://www.uniprot.org/uniprot/P20813)) involved in the metabolism of endocannabinoids and steroids (PubMed:21289075, PubMed:12865317). Mechanistically, uses molecular oxygen inserting one oxygen atom into a substrate, and reducing the second into a water molecule, with two electrons provided by NADPH via cytochrome P450 reductase (NADPH--hemoprotein reductase). Catalyzes the epoxidation of double bonds of arachidonoylethanolamide (anandamide) to 8,9-, 11,12-, and 14,15-epoxyeicosatrienoic acid ethanolamides (EpETrE-EAs), potentially modulating endocannabinoid system signaling (PubMed:21289075). Hydroxylates steroid hormones, including testosterone at C-16 and estrogens at C-2 (PubMed:21289075, PubMed:12865317). Plays a role in the oxidative metabolism of xenobiotics, including plant lipids and drugs (PubMed:11695850, PubMed:22909231). Acts as a 1,4-cineole 2-exo-monooxygenase (PubMed:11695850).

### Unknown NMDAR/GluR drug interactions
- Statins
- ACEi/ARB
- Ca++ channel blockers 
- Alpha-2 antagonists (precedex, clonidine)
- Octeotide
- Epoprostenol

## Memantine Ontologies

Dugbank 
[DB01043](https://www.drugbank.ca/drugs/DB01043)

Human Metabolome Database
[HMDB0015177](http://www.hmdb.ca/metabolites/HMDB0015177)

KEGG Drug
[D08174](http://www.genome.jp/dbget-bin/www_bget?drug:D08174)

KEGG Compound
[C13736](http://www.genome.jp/dbget-bin/www_bget?cpd:C13736)

PubChem Compound
[4054](http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?cid=4054)

PubChem Substance
[46506702](http://pubchem.ncbi.nlm.nih.gov/summary/summary.cgi?sid=46506702)

ChemSpider
[3914](http://www.chemspider.com/Chemical-Structure.3914.html)

BindingDB
[50062599](http://www.bindingdb.org/bind/chemsearch/marvin/MolStructure.jsp?monomerid=50062599)

RxNav
[6719](https://mor.nlm.nih.gov/RxNav/search?searchBy=RXCUI&searchTerm=6719)

ChEBI
[64312](http://www.ebi.ac.uk/chebi/searchId.do?chebiId=64312)

ChEMBL
[CHEMBL807](http://www.ebi.ac.uk/chembldb/index.php/compound/inspect/CHEMBL807)

Therapeutic Targets Database
[DAP000493](http://bidd.nus.edu.sg/group/cjttd/ZFTTDDRUG.asp?ID=DAP000493)

PharmGKB
[PA10364](http://www.pharmgkb.org/drug/PA10364)


