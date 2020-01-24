FROM python:3.7.4

WORKDIR /
COPY . .

RUN pip3 install mkdocs
RUN pip3 install mkdocs-material
RUN pip3 install mkdocs-mermaid-plugin

EXPOSE 8080
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8080"]
