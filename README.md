# Instructions

Run the default task to build and export all views to CSV (tarball).

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

# Memantine

- [FDA](https://s3-us-west-2.amazonaws.com/drugbank/fda_labels/DB01043.pdf?1555341575)
- [MSDS](https://s3-us-west-2.amazonaws.com/drugbank/msds/DB01043.pdf?1265922738)
- [Drugbank ID: DB01043](https://www.drugbank.ca/drugs/DB01043)
- [PubChem CID: 4054](https://pubchem.ncbi.nlm.nih.gov/image/imgsrv.fcgi?cid=4054&t=s)

## Memantine Pharmacodynamics

> Rammes, G et al. *Pharmacodynamics of memantine: an update.* Current neuropharmacology vol. 6,1 (2008): 55-78. [doi:157015908783769671](https://doi.org/10.2174/157015908783769671)

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




# Appendix
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

## Drugbank interactions
### [Memantine](https://www.drugbank.ca/drugs/DB01043)
#### Targets
1. 5-hydroxytryptamine receptor 3A
	- Gene Name: [HTR3A](https://www.drugbank.ca/polypeptides/HTR3A)
	- Uniprot ID: [P46098](http://www.uniprot.org/uniprot/P46098)
	- General Function
		- Voltage-gated potassium channel activity
	- Specific Function
		- This is one of the several different receptors for 5-hydroxytryptamine (serotonin), a biogenic hormone that functions as a neurotransmitter, a hormone, and a mitogen. This receptor is a ligand-gate...
	

2. Alpha-7 nicotinic cholinergic receptor subunit
	- Gene Name: [CHRNA7](https://www.drugbank.ca/polypeptides/CHRNA7)
	- Uniprot ID: [Q693P7](http://www.uniprot.org/uniprot/Q693P7)

3. Dopamine D2 receptor
	Gene Name: [DRD2](https://www.drugbank.ca/polypeptides/DRD2)
	Uniprot ID: [P14416](http://www.uniprot.org/uniprot/P14416)
	General Function
		- Potassium channel regulator activity
	Specific Function
		- Dopamine receptor whose activity is mediated by G proteins which inhibit adenylyl cyclase.

4. Glutamate receptor ionotropic, NMDA 1
	- Gene Name: [GRIN1](https://www.drugbank.ca/polypeptides/GRIN1)
	- Uniprot ID: [Q05586](http://www.uniprot.org/uniprot/Q05586)
	- General Function
		- Voltage-gated cation channel activity
	- Specific Function
		- NMDA receptor subtype of glutamate-gated ion channels with high calcium permeability and voltage-dependent sensitivity to magnesium. Mediated by glycine. This protein plays a key role in synaptic p...

5. Glutamate (NMDA) receptor (Protein Group)
	- General Function
		- Voltage-gated cation channel activity
	- Specific Function
		- NMDA receptor subtype of glutamate-gated ion channels with high calcium permeability and voltage-dependent sensitivity to magnesium. Mediated by glycine. This protein plays a key role in synaptic p...

**Components:**

		- Glutamate receptor ionotropic, NMDA 1: [Q05586](http://www.uniprot.org/uniprot/Q05586)
		- Glutamate receptor ionotropic, NMDA 2A: [Q12879](http://www.uniprot.org/uniprot/Q12879)
		- Glutamate receptor ionotropic, NMDA 2B: [Q13224](http://www.uniprot.org/uniprot/Q13224)
		- Glutamate receptor ionotropic, NMDA 2C: [Q14957](http://www.uniprot.org/uniprot/Q14957)
		- Glutamate receptor ionotropic, NMDA 2D: [O15399](http://www.uniprot.org/uniprot/O15399)
		- Glutamate receptor ionotropic, NMDA 3A: [Q8TCU5](http://www.uniprot.org/uniprot/Q8TCU5)
		- Glutamate receptor ionotropic, NMDA 3B: [O60391](http://www.uniprot.org/uniprot/O60391)

6. GABA(A) Receptor (Protein Group)
	- Curator comments
		- The binding of memantine to this target is believed to be low to negligible.
	- General Function
		- Inhibitory extracellular ligand-gated ion channel activity
	- Specific Function
		- Component of the heteropentameric receptor for GABA, the major inhibitory neurotransmitter in the vertebrate brain. Functions also as histamine receptor and mediates cellular responses to histamine...

**Components**

- Gamma-aminobutyric acid receptor subunit alpha-1	[P14867](http://www.uniprot.org/uniprot/P14867)
- Gamma-aminobutyric acid receptor subunit alpha-2	[P47869](http://www.uniprot.org/uniprot/P47869)
- Gamma-aminobutyric acid receptor subunit alpha-3	[P34903](http://www.uniprot.org/uniprot/P34903)
- Gamma-aminobutyric acid receptor subunit alpha-4	[P48169](http://www.uniprot.org/uniprot/P48169)
- Gamma-aminobutyric acid receptor subunit alpha-5	[P31644](http://www.uniprot.org/uniprot/P31644)
- Gamma-aminobutyric acid receptor subunit alpha-6	[Q16445](http://www.uniprot.org/uniprot/Q16445)
- Gamma-aminobutyric acid receptor subunit beta-1	[P18505](http://www.uniprot.org/uniprot/P18505)
- Gamma-aminobutyric acid receptor subunit beta-2	[P47870](http://www.uniprot.org/uniprot/P47870)
- Gamma-aminobutyric acid receptor subunit beta-3	[P28472](http://www.uniprot.org/uniprot/P28472)
- Gamma-aminobutyric acid receptor subunit delta	[O14764](http://www.uniprot.org/uniprot/O14764)
- Gamma-aminobutyric acid receptor subunit epsilon	[P78334](http://www.uniprot.org/uniprot/P78334)
- Gamma-aminobutyric acid receptor subunit gamma-1	[Q8N1C3](http://www.uniprot.org/uniprot/Q8N1C3)
- Gamma-aminobutyric acid receptor subunit gamma-2	[P18507](http://www.uniprot.org/uniprot/P18507)
- Gamma-aminobutyric acid receptor subunit gamma-3	[Q99928](http://www.uniprot.org/uniprot/Q99928)
- Gamma-aminobutyric acid receptor subunit pi	[O00591](http://www.uniprot.org/uniprot/O00591)
- Gamma-aminobutyric acid receptor subunit theta	[Q9UN88](http://www.uniprot.org/uniprot/Q9UN88)

7. Glycine receptors (Protein Group)
	- General Function
		- Transmitter-gated ion channel activity
	- Specific Function
		- The glycine receptor is a neurotransmitter-gated ion channel. Binding of glycine to its receptor increases the chloride conductance and thus produces hyperpolarization (inhibition of neuronal firing).

**Components**

1. Glycine receptor subunit alpha-1	
	- UniProt ID: [P23415](http://www.uniprot.org/uniprot/P23415)
2. Glycine receptor subunit alpha-2	
	- UniProt ID: [P23416](http://www.uniprot.org/uniprot/P23416)
3. Glycine receptor subunit alpha-3	
	- UniProt ID: [O75311](http://www.uniprot.org/uniprot/O75311)
4. Glycine receptor subunit alpha-4	
	- UniProt ID: [Q5JXX5](http://www.uniprot.org/uniprot/Q5JXX5)
5. Glycine receptor subunit beta		
	- UniProt ID: [P48167](http://www.uniprot.org/uniprot/P48167)

#### Enzymes
1. Cytochrome P450 2B6
    - https://www.drugbank.ca/polypeptides/P20813
2. Cytochrome P450 2A6
    - https://www.drugbank.ca/polypeptides/P11509
3. Cytochrome P450 2C19
    - https://www.drugbank.ca/polypeptides/P33261

#### Transporters
1. Solute carrier family 22 member 2 (putative)
    - Gene Name: [SLC22A2](https://www.drugbank.ca/polypeptides/O15244)
    - Uniprot ID: [O15244](http://www.uniprot.org/uniprot/O15244)
    - General Function
        - Quaternary ammonium group transmembrane transporter activity
    - Specific Function
        - Mediates tubular uptake of organic compounds from circulation. 
        - Mediates the influx of agmatine, dopamine, noradrenaline (norepinephrine), serotonin, choline, famotidine, ranitidine, histamin, creat...

2. Sodium/hydrogen exchanger 1
    - Gene Name: [SLC9A1](https://www.drugbank.ca/polypeptides/P19634)
    - Uniprot ID: [P19634](http://www.uniprot.org/uniprot/P19634)
    - General Function
        - Solute/proton antiporter activity
    - Specific Function
        - Involved in pH regulation to eliminate acids generated by active metabolism or to counter adverse environmental conditions. Major proton extruding system driven by the inward sodium ion chemical gr...

3. Solute carrier family 22 member 4
    - Gene Name: [SLC22A4](https://www.drugbank.ca/polypeptides/Q9H015)
    - Uniprot ID: [Q9H015](http://www.uniprot.org/uniprot/Q9H015)
    - General Function
        - Symporter activity
    - Specific Function
        - Sodium-ion dependent, low affinity carnitine transporter. Probably transports one sodium ion with one molecule of carnitine. Also transports organic cations such as tetraethylammonium (TEA) without...

4. Multidrug and toxin extrusion protein 1
    - Gene Name: [SLC47A1](https://www.drugbank.ca/polypeptides/Q96FL8)
    - Uniprot ID: [Q96FL8](http://www.uniprot.org/uniprot/Q96FL8)
    - General Function
        - Monovalent cation/proton antiporter activity
    - Specific Function
        - Solute transporter for tetraethylammonium (TEA), 1-methyl-4-phenylpyridinium (MPP), cimetidine, N-methylnicotinamide (NMN), metformin, creatinine, guanidine, procainamide, topotecan, estrone sulfat...

**References**

> Rammes, G., Danysz, W., & Parsons, C. G. (2008). Pharmacodynamics of memantine: an update. Current neuropharmacology, 6(1), 55–78. [PubMed:19305788](https://www.ncbi.nlm.nih.gov/pubmed/19305788). [doi:157015908783769671](https://doi.org/10.2174/157015908783769671)
> 
> Xia P, Chen HS, Zhang D, Lipton SA: Memantine preferentially blocks extrasynaptic over synaptic NMDA receptor currents in  hippocampal autapses. J Neurosci. 2010 Aug 18;30(33):11246-50. doi: 10.1523/JNEUROSCI.2488-10.2010. [PubMed:20720132](http://www.ncbi.nlm.nih.gov/pubmed/20720132)
> 
> Limapichat W, Yu WY, Branigan E, Lester HA, Dougherty DA: Key binding interactions for memantine in the NMDA receptor. ACS  Chem Neurosci. 2013 Feb 20;4(2):255-60. doi: 10.1021/cn300180a. Epub 2012 Dec 7. [PubMed:23421676](http://www.ncbi.nlm.nih.gov/pubmed/23421676)
> 
> Muller F, Weitz D, Derdau V, Sandvoss M, Mertsch K, Konig J, Fromm MF: Contribution of MATE1 to Renal Secretion of the NMDA > 
> Receptor Antagonist Memantine. Mol Pharm. 2017 Sep 5;14(9):2991-2998. doi: 10.1021/acs.molpharmaceut.7b00179. Epub 2017 Aug 2. [PubMed:28708400](http://www.ncbi.nlm.nih.gov/pubmed/28708400)
> 
> Molinaro G, Battaglia G, Riozzi B, Di Menna L, Rampello L, Bruno V, Nicoletti F: Memantine treatment reduces the expression of the K(+)/Cl(-) cotransporter KCC2 in the hippocampus and cerebral cortex, and attenuates behavioural responses mediated by GABA (A) receptor activation in mice. Brain Res. 2009 Apr 10;1265:75-9. doi: 10.1016/j.brainres.2009.02.016. Epub 2009 Feb 21. [PubMed:19236854](http://www.ncbi.nlm.nih.gov/pubmed/19236854)
> 
> Robinson DM, Keating GM: Memantine: a review of its use in Alzheimer's disease. Drugs. 2006;66(11):1515-34. [PubMed:16906789]
>
> Cacabelos R, Takeda M, Winblad B: The glutamatergic system and neurodegeneration in dementia: preventive strategies in  Alzheimer's disease. Int J Geriatr Psychiatry. 1999 Jan;14(1):3-47. [PubMed:10029935](http://www.ncbi.nlm.nih.gov/pubmed/10029935)
> 
> Rogawski MA, Wenk GL: The neuropharmacological basis for the use of memantine in the treatment of Alzheimer's disease. CNS  Drug Rev. 2003 Fall;9(3):275-308. [PubMed:14530799](http://www.ncbi.nlm.nih.gov/pubmed/14530799)
> 
> Rammes G, Rupprecht R, Ferrari U, Zieglgansberger W, Parsons CG: The N-methyl-D-aspartate receptor channel blockers memantine, MRZ 2/579 and other amino-alkyl-cyclohexanes antagonise 5-HT(3) receptor currents in cultured HEK-293 and N1E-115 cell systems in a non-competitive manner. Neurosci Lett. 2001 Jun 22;306(1-2):81-4. [PubMed:11403963](http://www.ncbi.nlm.nih.gov/pubmed/11403963)
> 
> Nisijima K, Shioda K, Yoshino T, Takano K, Kato S: Memantine, an NMDA antagonist, prevents the development of hyperthermia in an animal model for serotonin syndrome. Pharmacopsychiatry. 2004 Mar;37(2):57-62. doi: 10.1055/s-2004-815526. [PubMed:15048612](http://www.ncbi.nlm.nih.gov/pubmed/15048612)
> 
> Aracava Y, Pereira EF, Maelicke A, Albuquerque EX: Memantine blocks alpha7* nicotinic acetylcholine receptors more potently than n-methyl-D-aspartate receptors in rat hippocampal neurons. J Pharmacol Exp Ther. 2005 Mar;312(3):1195-205. Epub 2004 Nov 2. [PubMed:15522999](http://www.ncbi.nlm.nih.gov/pubmed/15522999)
> 
> Maskell PD, Speder P, Newberry NR, Bermudez I: Inhibition of human alpha 7 nicotinic acetylcholine receptors by open channel > blockers of N-methyl-D-aspartate receptors. Br J Pharmacol. 2003 Dec;140(7):1313-9. doi: 10.1038/sj.bjp.0705559. [PubMed:14645141](http://www.ncbi.nlm.nih.gov/pubmed/14645141)
> 
> Pohanka M: Alpha7 nicotinic acetylcholine receptor is a target in pharmacology and toxicology. Int J Mol Sci. 2012;13(2) :2219-38. doi: 10.3390/ijms13022219. Epub 2012 Feb 17. [PubMed:22408449](http://www.ncbi.nlm.nih.gov/pubmed/22408449)
> 
> Seeman P, Caruso C, Lasaga M: Memantine agonist action at dopamine D2High receptors. Synapse. 2008 Feb;62(2):149-53.  [PubMed:18000814](http://www.ncbi.nlm.nih.gov/pubmed/18000814)
> 
> Serra G, Demontis F, Serra F, De Chiara L, Spoto A, Girardi P, Vidotto G, Serra G: Memantine: New prospective in bipolar  disorder treatment. World J Psychiatry. 2014 Dec 22;4(4):80-90. doi: 10.5498/wjp.v4.i4.80. [PubMed:25540723](http://www.ncbi. nlm.nih.gov/pubmed/25540723)
> 
> Nakaya K, Nakagawasai O, Arai Y, Onogi H, Sato A, Niijima F, Tan-No K, Tadano T: Pharmacological characterizations of  memantine-induced disruption of prepulse inhibition of the acoustic startle response in mice: involvement of dopamine D2 and  5-HT2A receptors. Behav Brain Res. 2011 Mar 17;218(1):165-73. doi: 10.1016/j.bbr.2010.11.053. Epub 2010 Dec 3.  [PubMed:21130810](http://www.ncbi.nlm.nih.gov/pubmed/21130810)
> 
> Mancini M, Ghiglieri V, Bagetta V, Pendolino V, Vannelli A, Cacace F, Mineo D, Calabresi P, Picconi B: Memantine alters  striatal plasticity inducing a shift of synaptic responses toward long-term depression. Neuropharmacology. 2016 Feb; 101:341-50. doi: 10.1016/j.neuropharm.2015.10.015. Epub 2015 Dec 3. [PubMed:26471421](http://www.ncbi.nlm.nih.gov/pubmed/26471421)
> 
> Kotermanski SE, Wood JT, Johnson JW: Memantine binding to a superficial site on NMDA receptors contributes to partial  trapping. J Physiol. 2009 Oct 1;587(Pt 19):4589-604. doi: 10.1113/jphysiol.2009.176297. Epub 2009 Aug 17. [PubMed:19687120] (http://www.ncbi.nlm.nih.gov/pubmed/19687120)
> 
> 
> Cacabelos R, Takeda M, Winblad B: The glutamatergic system and neurodegeneration in dementia: preventive strategies in  Alzheimer's disease. Int J Geriatr Psychiatry. 1999 Jan;14(1):3-47. [PubMed:10029935](http://www.ncbi.nlm.nih.gov/pubmed/10029935)
> 
> Rogawski MA, Wenk GL: The neuropharmacological basis for the use of memantine in the treatment of Alzheimer's disease. CNS  Drug Rev. 2003 Fall;9(3):275-308. [PubMed:14530799](http://www.ncbi.nlm.nih.gov/pubmed/14530799)
> 
> Robinson DM, Keating GM: Memantine: a review of its use in Alzheimer's disease. Drugs. 2006;66(11):1515-34. [PubMed:16906789](http://www.ncbi.nlm.nih.gov/pubmed/16906789)
> 
> Rogawski MA: Low affinity channel blocking (uncompetitive) NMDA receptor antagonists as therapeutic agents--toward an  understanding of their favorable tolerability. Amino Acids. 2000;19(1):133-49. [PubMed:11026482](http://www.ncbi.nlm.nih.gov/pubmed/11026482)
> 
> Rammes G, Rupprecht R, Ferrari U, Zieglgansberger W, Parsons CG: The N-methyl-D-aspartate receptor channel blockers memantine, > MRZ 2/579 and other amino-alkyl-cyclohexanes antagonise 5-HT(3) receptor currents in cultured HEK-293 and N1E-115 cell systems > in a non-competitive manner. Neurosci Lett. 2001 Jun 22;306(1-2):81-4. [PubMed:11403963](http://www.ncbi.nlm.nih.gov/pubmed/11403963)
> 
> Kishi T, Matsunaga S, Oya K, Nomura I, Ikuta T, Iwata N: Memantine for Alzheimer's Disease: An Updated Systematic Review and Meta-analysis. J Alzheimers Dis. 2017;60(2):401-425. [doi: 10.3233/JAD-170424](http://doi.org/10.3233/JAD-170424). [PubMed:28922160](http://www.ncbi.nlm.nih.gov/pubmed/28922160)
> 
> Brianne Kuns; Dona Varghese (2019). StatPearls: Memantine. StatPearls Publishing.
> 135 million people will live with dementia worldwide by 2050 [Link](https://www.alzheimersresearchuk.org/135-million-people-will-live-with-dementia-worldwide-by-2050/)
> 
> Sandoz Monograph: Memantine hydrochloride oral tablets [Link](https://s3-us-west-2.amazonaws.com/drugbank/cite_this/attachments/files/000/004/375/original/Memantine_FCT_PM_English20150916.pdf?1555348927)
> 
> Alzheimer's disease international: Global Impact of Dementia 2013 [File](https://s3-us-west-2.amazonaws.com/drugbank/cite_this/attachments/files/000/004/366/original/GlobalImpactDementia2013.pdf?1555345885)
> 
> Memantine Product [File](https://s3-us-west-2.amazonaws.com/drugbank/cite_this/attachments/files/000/004/375/original/Memantine_FCT_PM_English20150916.pdf?1555348927)
