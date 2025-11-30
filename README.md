# Photometric Characterization of Open Cluster M52 (NGC 7654)

![Status](https://img.shields.io/badge/Status-Completed-success)
![Language](https://img.shields.io/badge/Language-Python-blue)
![Context](https://img.shields.io/badge/Context-M2-orange)

## Project Context
This research project was conducted at the **Observatoire de Haute-Provence (OHP)** from **September 22 to September 26**.

It was carried out as part of the practical observing module for the **Master 2 Astrophysics programs** of the Universities of **Lyon** and **Montpellier**, as well as the **CCP Montpellier** curriculum.

## Objectives
The primary goal of this project was to perform a complete photometric study of the open cluster **M52 (NGC 7654)** using multi-band optical imaging ($g$, $r$, $i$). The study aimed to develop a robust data reduction pipeline to derive the fundamental physical parameters of the cluster:
* **Age** ($\tau$)
* **Distance** ($d$)
* **Interstellar Reddening** ($E(B-V)$)

## Methodology & Pipeline
The analysis was performed using a custom Python pipeline utilizing `astropy`, `photutils`, and `astroquery`. The workflow consists of the following steps:

### 1. Data Reduction & Astrometry
* **Astrometric Solution:** Blind solving of the field using **Astrometry.net** to map pixel coordinates to Celestial coordinates ($\alpha, \delta$).
* **Preprocessing:** Sigma-clipped background estimation and subtraction for each filter ($g, r, i$).
* **Source Detection:** Implementation of `DAOStarFinder` (Gaussian kernel convolution) for star extraction.
* **Aperture Photometry:** Computation of instrumental magnitudes.

### 2. Member Selection & Calibration
* **Spatial Filtering:** Statistical selection of cluster members based on a radial cut ($r < R_{lim}$) from the cluster center.
* **Cross-Matching:** Strict intersection of detections across all three bands ($g \cap r \cap i$) to reject artifacts and cosmic rays.
* **Independent Calibration:** Derivation of photometric Zero-Points (ZP) by cross-matching observed stars with the **Pan-STARRS DR1** reference catalog. A fixed-slope linear regression model ($slope=1.0$) was applied to ensure physical consistency with CCD linearity.

### 3. Modeling
* **Isochrone Fitting:** Construction of the Color-Magnitude Diagram (CMD) and superposition of theoretical **PARSEC** evolutionary tracks.
* **Statistical Analysis:** Estimation of parameter uncertainties using Markov Chain Monte Carlo (**MCMC**) sampling.
* **Validation:** Comparison of OHP data with an independent dataset acquired at **CRAL (Lyon)** to assess reproducibility.

## Key Results
The analysis successfully classified M52 as a young open cluster located in the Perseus Arm.

| Parameter | Visual Fit Result | MCMC Result W/ Lyon | Literature Consensus |
| :--- | :--- | :--- | :--- |
| **Age** | ~100 Myr | $75.85 Myr | 60 - 100 Myr |
| **Distance** | ~1.8 kpc | $1.28 kpc | 1.4 - 1.8 kpc |
| **Reddening $E(B-V)$** | 0.7 mag | $0.70 mag | ~0.6 - 0.8 mag |

## Requirements
To reproduce the analysis, the following Python libraries are required:
* `numpy`
* `matplotlib`
* `scipy`
* `astropy`
* `photutils`
* `astroquery`

*Note: The `solve-field` executable from the Astrometry.net suite must be installed locally.*

## Authors
AUTHORS
All the data used here are available by contacting Romain Loustalet Palengat at : romain DOT loustalet DASH palengat AT etu DOT univ DASH lyon1 DOT fr