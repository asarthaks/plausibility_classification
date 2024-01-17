# smp_project
If you have NVIDIA GPU Drivers installed on your machine, just compose the docker image using the command `docker-compose up -d`
Else, comment the following line from the docker-file before composing the docker image `RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118` 

## Model Training
For model training we used two main models for both the datasets:
1. Finetuned Deberta (both with and without concreteness score sequence.)
2. Finetuned BART model (both with and without concreteness score sequence.)

You can find the final files in the modelling folder, in the respective datasets (FinalModelling[combined] - {DATASET_NAME_HERE}.ipynb). Other additional experiments can be found in the respective experiments folder.