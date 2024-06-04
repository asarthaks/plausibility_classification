# smp_project

Enhanced a DeBERTa-based sequence classification model by integrating concreteness scores as additional input features to improve prediction accuracy. Modified the classification head and context pooling layer to accommodate and concatenate these scores with pooled sentence embeddings. Conducted extensive experiments using PyTorch and the Transformers library, demonstrating the effectiveness of this approach over baseline models.

## Setup  
If you have NVIDIA GPU Drivers installed on your machine, just compose the docker image using the command `docker-compose up -d`
Else, comment the following line from the docker-file before composing the docker image `RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118` 
