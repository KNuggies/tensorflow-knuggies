# This assumes the container is running on a system with a CUDA GPU
FROM tensorflow/tensorflow:latest-gpu

WORKDIR /tf-knugs

RUN pip install jupyterlab pandas matplotlib

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]
