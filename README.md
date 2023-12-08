# smp_project
If you have NVIDIA GPU Drivers installed on your machine, just compose the docker image using the command `docker-compose up -d`
Else, comment the following line from the docker-file before composing the docker image `RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118` 