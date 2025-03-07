FROM rocker/r-ver:4.2.2

RUN apt-get update && \
	apt-get install -y \
		zlib1g-dev \
		libxml2 \
		libbz2-dev \
		liblzma-dev \
		libpcre3-dev \
		libicu-dev \
		libglpk40 \
		libcurl4-openssl-dev


#install r packages
RUN install2.r --error \
	devtools \
	XML \
	dplyr \ 
	VennDiagram \ 
	BiocManager \
	tidyverse \
	readr \
	taxonomizr

#install R packages via devtools
#RUN R -e "devtools::install_github('benjjneb/dada2', ref='v1.16')"

#install R packages via bioconductor
RUN R -e "BiocManager::install('dada2')"
RUN R -e "BiocManager::install('ComplexHeatmap')"

