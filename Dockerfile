FROM jolielang/jolie

WORKDIR /microservice
RUN ls

COPY . /microservice/
WORKDIR /microservice/service
RUN chmod +x ./compile.sh
RUN ./compile.sh
WORKDIR /microservice

CMD ["jolie", "embed.ol"]
