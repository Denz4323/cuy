Skip to content
ImYanXiao
/
Elaina-MultiDevice
Public
Code
Issues
Pull requests
Actions
Projects
Security
Insights
Elaina-MultiDevice/Dockerfile
@ImYanXiao
ImYanXiao Tes Sj
 1 contributor
19 lines (13 sloc)  273 Bytes
FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm i && npm i -g qrcode-terminal

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Elaina-MultiDevice/Dockerfile at master · ImYanXiao/Elaina-MultiDevice
