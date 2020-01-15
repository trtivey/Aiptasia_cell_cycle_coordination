# Aiptasia_cell_cycle_coordination
Code accompanying Aiptasia cell cycle coordination manuscript

imageJ_analysis folder contains FIJI/ImageJ macros to find and segment 3D objects from confocal Z-stacks of sea anemone tentacles. Macros for Hoechst, EdU, and volume analysis can be used on confocal files (.czi) if provided a specified input folder and output folder. Macros for Symbiont analysis need to be done sequentially (part 1 to part 4).

apo_analysis and sym_analysis contain files generated from imageJ_analysis and are used and generated for data analysis and figure generation of spatial analysis Rmarkdown files. The Rmarkdown file within apo_analysis and sym_analysis are used first to create nearest neighbor folders. Spatial_analysis_and_figures.Rmd is then used to generate data analysis and figures for Figures 3 and 4. Spatial_analyses_symbiont_location.Rmd is then also used to determine z-axis locations and other comparisons. Symbiont_bounding_box_analysis.Rmd is finally used to determine bounding boxes of symbionts, chi-square analyses, and other boolean analyses in figure 3 and 4.


symbiont_flow_analysis contains data and figure generation for flow cytometry of algal symbionts (fig. 5 and 6).

