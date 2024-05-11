Install WSL2 as per Windows instructions.

Install and test a Ubuntu 22.04lts instance.

Install Docker Desktop and enable WSL support for your instance.

Install CUDA Container Runtime if necessary.

Then `docker compose up -d`  from this directory.

In Windows, point an instance of Chrome or Firefox or Brave to http://localhost:3000  


(you should have good highspeed internet, the first time the container images are downloaded it can take a while;  weights of larger models will also need significant time to download)
  
