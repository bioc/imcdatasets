# imcdatasets

[![Build Status](https://travis-ci.org/BodenmillerGroup/imcdatasets.svg?branch=master)](https://travis-ci.org/BodenmillerGroup/imcdatasets)

## Summary

The `imcdatasets` package is an extensible resource containing a set of publicly available imaging mass cytometry datasets. The datasets contain single cell data in the form of `SingleCellExperiment` objects, multichannel images formatted into `CytoImageList` objects and cell masks formatted into `CytoImageList` objects. These formats facilitate accession and integration into R/Bioconductor workflows.
The data objects are hosted on Bioconductor's `ExperimentHub` platform.  

The single cell data contain cell-level expression values and metadata. The `rowData` of the `SingleCellExperiment` objects contain marker information while the `colData` contain cell-level metadata. `CytoImageList` objects contain either multichannel images and channel names, or binary cell masks.  For more information about these data objects, please refer to the [SingleCellExperiment](https://www.bioconductor.org/packages/release/bioc/html/SingleCellExperiment.html) and [cytomapper](https://www.bioconductor.org/packages/devel/bioc/html/cytomapper.html) packages.

## Vignettes

Additional details are provided in the vignette, available from the [Bioconductor](http://bioconductor.org/packages/imcdatasets) website.  

For details on the datasets, see the help files for each dataset available within the package, or the metadata from the `ExperimentHub` database.  


## Availability and installation

The `imcdatasets` package is freely available from [Bioconductor](http://bioconductor.org/packages/imcdatasets), and can be installed by following standard Bioconductor package installation procedures:

```{r}
# install BiocManager (if not already installed)
install.packages("BiocManager")

# install HDCytoData package
BiocManager::install("imcdatasets")
```
