FROM principialabs/torch-points3d:latest-cpu
RUN apt-get update
RUN apt-get install -qq xvfb libgl1-mesa-glx
RUN pip install pyvista jupyterlab
RUN pip install -U torch-points3d
WORKDIR /app
EXPOSE 8888
ENTRYPOINT jupyter lab --ip=0.0.0.0 --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password=''