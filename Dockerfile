FROM julia:1.0
COPY install.sh .
COPY install.jl .
COPY test.jl .
RUN ./install.sh
RUN julia install.jl
RUN julia test.jl
WORKDIR /home
CMD ["/root/.julia/packages/Conda/m7vem/deps/usr/bin/jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--no-browser"]
