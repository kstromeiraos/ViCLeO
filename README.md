# VICLEO

## Synopsis

VICLEO does an automatic analysis of the lexic field of sentences using Wordnet. VICLEO obtains the sense of the terms automatically, applies similarity measures (Path Length, Wu & Palmer and Leakcock & Chodorow) between terms and shows the results to the users interactively.

Back-end uses Apache OpenNLP to do the tokenization and classification of sentence terms. WordNet is the source used to obtain information of the sentence terms. JAWS is the API used to get WordNet information.

Front-end uses D3.js to show to the user the information of the sentence obtained, and Bootstrap to the web page.

There is a RESTful API developed using Jersey to communicate front-end and back-end.

VICLEO is the final project developed by José Antonio López Fojo to get the BsC in Computer Science Engineering by USC.

## Installation

VICLEO uses Docker to simplify deployment process.

First of all, you need to install Docker. Instructions can be found here: https://docs.docker.com/engine/installation/

Then, you need to clone the project, create .war file and deploy it using an Apache Tomcat container.

```
git clone git@github.com:kstromeiraos/vicleo.git
cd /vicleo
jar -cvf vicleo.war *  
docker build -t "vicleo" .
docker run -d --name vicleo -p 80:8080 vicleo
```

After that, VICLEO will be running in localhost.
