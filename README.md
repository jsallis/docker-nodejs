# docker-nodejs

A base docker container for running node.js apps. A pre-built image is available at the [Docker Hub Registry](https://registry.hub.docker.com/u/jsallis/nodejs/).

### Example usage

#### Print node.js version

```
$ docker run jsallis/nodejs nodejs -v
v0.12.7
```

#### Building your own Dockerfile

Assuming you have a project containing a Dockerfile and an index.js file, your Dockerfile could look like this:

```
FROM jsallis/nodejs

COPY . /src
RUN cd /src; npm install

EXPOSE 3000

CMD ["node", "/src/index.js"]
```

### Development

#### Building

```
docker build .
```

#### Testing

```
bundle install
bundle exec rspec specs
```
