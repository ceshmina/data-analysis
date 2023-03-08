FROM condaforge/miniforge3

RUN conda install -c conda-forge mamba

RUN mamba create -n analysis python==3.9 -y
ENV CONDA_DEFAULT_ENV analysis

RUN mamba install -c conda-forge \
    jupyterlab \
    numpy pandas matplotlib seaborn \
    scikit-learn lightgbm

# dowhyを追加
RUN mamba install -c conda-forge dowhy -y

# econmlを追加
RUN apt update && apt install -y build-essential
RUN pip install econml

RUN echo "conda activate analysis" >> ~/.bashrc
ENV PATH /opt/conda/envs/analysis/bin:$PATH
