# Whittle Maximum Likelihood Estimator Tutorial

This repository contains MATLAB code and sample data used in the publication:  
[A guide to Whittle maximum likelihood estimator in MATLAB](https://www.frontiersin.org/journals/network-physiology/articles/10.3389/fnetp.2023.1204757/full)  
*Frontiers in Network Physiology*. The tutorial demonstrates the implementation and application of Whittle’s maximum likelihood estimator for estimating fractal exponents in time series, along with related analyses such as periodogram estimation, detrended fluctuation analysis, and error assessment.

---

## Repository Overview

All scripts and data files are located in the root directory. The key components include:

- **Time Series Simulation**
  - `ARFIMA0d0.m`  
    Generates an ARFIMA(0, d, 0) process.
  - `ARFIMApdq.m`  
    Generates an ARFIMA process with specified AR, differencing, and MA parameters.
  - `cholfgn.m`  
    Simulates fractional Gaussian noise (fGn) using the Cholesky decomposition method.

- **Analysis and Estimation**
  - `DFA.m`  
    Implements detrended fluctuation analysis (DFA) to estimate the Hurst exponent.
  - `whittle.m`  
    Computes the Whittle estimator for both fGn and ARFIMA models.

- **Visualization and Figure Generation**
  - `Fig1_PSD.m`  
    Computes and plots periodograms for various signals.
  - `Fig2_TPSD.m` and `Fig3_TPSD_adjusted.m`  
    Compare empirical periodograms with theoretical power spectral densities and adjust the theoretical PSDs to better match the data.
  - `Fig4_lwH.m`  
    Computes and plots Whittle log-likelihood functions over a range of Hurst exponent values.
  - `Fig5_GenBiases.m`  
    Evaluates biases in the estimation of the fractal exponent.
  - `Fig6_SquaredError.m`  
    Generates box plots of the squared error in the estimation of the fractal exponent.
  - `Fig7_SignalLength.m`  
    Analyzes the impact of varying signal lengths on the estimation error.
  - `Fig8_SpectralBehavior.m`  
    Visualizes the spectral behavior of rearranged Hausdorff data and an ARFIMA(2, -0.35, 1) signal.

- **Signal Generation and Complete Analysis Workflow**
  - `signal_generation_and_analysis.m`  
    Demonstrates the full workflow: generating signals, applying the Whittle estimator and DFA, and timing the analyses.

- **Data Files**
  - `generatedsignals.mat`, `fractalsignals.mat`, and `spectralbehavior.mat`  
    Contain the pre-generated signals and spectral data required to reproduce the figures.


---

## How to Run

1. **Clone the Repository**
   ```bash
   git clone https://github.com/clementroume/Whittle_maximum_likelihood_estimator_tutorial.git
   ```

2. **Setup MATLAB**
    - Ensure MATLAB is installed with the necessary toolboxes (e.g., Signal Processing Toolbox).
    - Add the repository folder to your MATLAB path if required.
2. **Execute the Scripts**
    - Open MATLAB and run any of the scripts (for example, `Fig1_PSD.m` or `signal_generation_and_analysis.m`) to reproduce the analyses and figures.
    - Each script is self-contained and includes comments explaining its functionality.

---

## Citation

If you use this code or data in your research, please cite our work:  
[A guide to Whittle maximum likelihood estimator in MATLAB](https://www.frontiersin.org/journals/network-physiology/articles/10.3389/fnetp.2023.1204757/full)

---

## About the Developer

I'm Clément Roume, a researcher in human movement sciences with a keen interest in data analysis and signal processing. For more details, connect with me on [LinkedIn](https://www.linkedin.com/in/croume/) or explore my projects on [GitHub](https://github.com/clementroume).

---

