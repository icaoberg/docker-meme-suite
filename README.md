# README

## Docker
To build the Docker image, run the command

```
docker build -t icaoberg/meme-suite .
```

For convenience, the Docker image can be found in [Dockerhub](https://hub.docker.com/r/icaoberg/meme-suite/builds/).

To run a container using the image above

```
docker run -i -t icaoberg/meme-suite
```

## Singularity
To create the Singularity container, run the command

```
singularity image.create -s 5000 ubuntu17.10-meme_4.11.1.img
sudo singularity build ubuntu17.10-meme_4.11.1.img Singularity
```

To connect to the Singularity image, run the command

```
singularity shell ubuntu17.10-meme_4.11.1.img

Singularity: Invoking an interactive shell within container...

Singularity ubuntu17.10-meme_4.11.1.img:~/meme-suite> ls /opt/bin/

alphtype		    fisher_exact	  meme2meme
ama			    fitevd		  meme_xml_to_html
ama-qvalues		    gendb		  motif-shuffle-columns
ame			    getsize		  motiph
beeml2meme		    glam2		  nmica2meme
centrimo		    glam2format		  plotgen
ceqlogo			    glam2html		  pmp_bf
chen2meme		    glam2mask		  priority2meme
clustalw2fasta		    glam2psfm		  psp-gen
clustalw2phylip		    glam2scan		  purge
compute-prior-dist	    glam2scan2html	  qvalue
compute-uniform-priors	    gomo		  ramen
create-priors		    gomo_highlight	  ranksum_test
dreme			    hart2meme-bkg	  reconcile-tree-alignment
dreme_xml_to_html	    hartemink2psp	  reduce-alignment
dreme_xml_to_txt	    import-html-template  remove-alignment-gaps
dust			    iupac2meme		  rna2meme
elm2meme		    jaspar2meme		  rsat-retrieve-seq
fasta-center		    llr			  rsat-supported-organisms
fasta-dinucleotide-shuffle  mast		  scpd2meme
fasta-fetch		    mast_xml_to_html	  sd
fasta-get-markov	    mast_xml_to_txt	  sites2meme
fasta-grep		    matrix2meme		  spamo
fasta-hamming-enrich	    mcast		  taipale2meme
fasta-make-index	    meme		  tamo2meme
fasta-most		    meme-chip		  tomtom
fasta-shuffle-letters	    meme-get-motif	  tomtom_xml_to_html
fasta-subsample		    meme-rename		  transfac2meme
fasta-unique-names	    meme2alph		  uniprobe2meme
fimo			    meme2images		  xsltproc_lite
```

## Acknowledgement

The Dockerfile in this repository is based on [forrestzhang](https://github.com/forrestzhang) [Dockerfile](https://github.com/forrestzhang/Docker/tree/master/meme).
