FROM condaforge/miniforge3

RUN conda install -c conda-forge mamba \
    && mamba install -c conda-forge \
        jupyterlab \
        numpy pandas matplotlib seaborn \
        scikit-learn lightgbm
