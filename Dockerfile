# node image as base
FROM node:latest

# install python3 and pip
RUN apt update 
RUN apt install python3
RUN apt install -y python3-pip

# setup pyls with (all) plugins
RUN pip install "python-language-server[all]"

# setup and start language server
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 3000

