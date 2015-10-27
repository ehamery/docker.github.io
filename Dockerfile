FROM docs/base:hugo-github-linking
MAINTAINER Mary Anthony <mary@docker.com> (@moxiegirl)

# To get the git info for this repo
COPY . /src

COPY . /docs/content/docker-trusted-registry

RUN svn checkout https://github.com/docker/docker/trunk/docs /docs/content/engine
RUN svn checkout https://github.com/docker/compose/trunk/docs /docs/content/compose
RUN svn checkout https://github.com/docker/swarm/trunk/docs /docs/content/swarm
RUN svn checkout https://github.com/docker/machine/trunk/docs /docs/content/machine
RUN svn checkout https://github.com/docker/distribution/trunk/docs /docs/content/registry
RUN svn checkout https://github.com/kitematic/kitematic/trunk/docs /docs/content/kitematic
RUN svn checkout https://github.com/docker/tutorials/trunk/docs/mac /docs/content/mac
RUN svn checkout https://github.com/docker/tutorials/trunk/docs/windows /docs/content/windows
RUN svn checkout https://github.com/docker/tutorials/trunk/docs/linux /docs/content/linux
RUN svn checkout https://github.com/docker/opensource/trunk/docs /docs/content/opensource
