# H3K27ac Analysis

This `snakemake` workflow is a modification of the [GRAVI](https://github.com/steveped/GRAVI) workflow especially for H3K27ac data.
The inclusion of external data such as RNA-Seq or HiC/Hi-ChIP data has been removed, whilst most steps remain largely similar to the original workflow (v.0.2.2).
GIven that the GRAVI workflow commonly accepts H3K27ac data as external data, this ability has also been removed from this modified version.
However, the output generated here will be very well-suited for inclusion in subsequent analysis of specific transcription factors.

An additional step for *detection of super-enhancers* has also been added.

The possibility of comparison across multiple models, tissues or cell-lines has been retained with the original `target` column of `samples.tsv` being relabelled to `source` both within this file and throughout the workflow.

Other steps from GRAVI which are essentially unmodified are:

| Step | Modifications |
|:---- |:------------- |
| Annotation Setup | - No RNA Seq data (i.e. detected genes) is included |
| `macs2 callpeak` | - The `--max-gap` parameter has been added |
|                  | - Peaks are classified as Promotoers/Enhancers |
|                  | - Putative Super-Enhancers are called usig ROSE |
| Differential Binding | - No IHW has been incorporated |
| Pairwise Comparisons |                                |

As may be expected, no comparisons against external features have been retained.
