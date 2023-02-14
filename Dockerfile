FROM condaforge/miniforge3

RUN conda install -c conda-forge mamba \
    && mamba install -c conda-forge \
        jupyterlab \
        numpy pandas matplotlib seaborn \
        scikit-learn lightgbm

# dowhyを追加
RUN mamba install -c conda-forge dowhy

# econmlを追加
RUN apt update && apt install -y build-essential
RUN pip install econml
