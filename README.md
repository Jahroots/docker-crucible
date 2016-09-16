Docker-Crucible
===============

[![](https://images.microbadger.com/badges/image/jahroots/crucible.svg)](https://microbadger.com/images/jahroots/crucible "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/jahroots/crucible.svg)](https://microbadger.com/images/jahroots/crucible "Get your own version badge on microbadger.com")

A simple container in order to start using [Atlassian Crucible](https://www.atlassian.com/software/crucible/overview)

Based on the [Dockerfile/java/oracle-java8](https://github.com/dockerfile/java/tree/master/oracle-java8) container

This container exposes 2 ports:

	* 22   : for the ssh service
	
	* 8060 : for the crucible server

### Usage
	docker run -d -P jahroots/crucible
