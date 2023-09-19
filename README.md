# Choropleth Maps Can Convey Absolute Magnitude Through the Range of the Accompanying Color Legend

* Data is in the `data` folder (this also contains the script for anonymising original data files)
* Analysis code is in the `ChoroplethMagnitude.qmd` (quarto) file

## Instructions for Using Docker To Generate the Manuscript Within a Fully-Reproducible Environment

We provide resources for re-creating the computational environment (R version, package versions) used for all data wrangling, data visualization, statistical modelling, and reporting. This will generate a fully interactive RStudio session, which will be running from a Docker container.

1. Download [Docker Desktop](https://www.docker.com) and launch it
2. Clone this repository to your local machine
3. Rename the local repository `choroplethmagnitude` (Docker won't accept uppercase letters in the directory name)
4. Use the command line to navigate to the repository
5. Type `docker build -t choroplethmagnitude .` (where `choroplethmagnitude` is the repository name). This builds the Docker image.
6. Type `docker run --rm -p 8787:8787 -e PASSWORD=password choroplethmagnitude`. This launches the Docker container.
7. In your browser's address bar, type `localhost:8787`
8. Enter `rstudio` as the username and `password` as the password. 
9. Open `ChoroplethMagnitude.qmd` and press Render to generate `ChoroplethMagnitude.pdf`

Note: Computationally intensive statistical models have been saved in `ChoroplethMagnitude_cache`. To speed-up rendering, these cached models are loaded instead of executing the code that generated them. To generate models from scratch, change the `eval_models` parameter in line 5 to `true`.

