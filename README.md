# Exercism Docker

Here are Docker images that can be used to quickly get up and running with the online code learning platform [Exercism](https://exercism.io). Part of the experience of learning a new programming language is setting up the tooling and environment, but it's not always desirable to install a lot of software just to experiment with a new language. This project aims to use containerization to isolate the Exercism track environment from the rest of the host system. Not affiliated with Exercism, Inc.

## Installation

Requires [Docker](https://docs.docker.com/install/).
, I
Build the base Docker image:

```bash
make build_base_image
```

Build a track-specific image:

```bash
TRACK=<track-name> make build_track_image
```

E.g.:

```bash
make build_base_image && TRACK=python make build_track_image
```

## Usage

Run a track's container (requires an [exercism.io CLI token](https://exercism.io/my/settings)):

```bash
TOKEN=<my-exercism-token> \
  TRACK=<track-name> \
  make run_track
```

Running the above command will drop you into a bash prompt on the running container. Exercism track code is saved in the `/workspace` directory on the container, which is mounted from `./workspace` on the host machine in the root directory of this project. On the container, you can use the `exercism` CLI tool to download exercises, e.g.:

```bash
root@68483403b74e:/workspace/python# exercism download --exercise=hello-world --track=python
```

## Supported Tracks:

### [Clojure](https://exercism.io/my/tracks/clojure)

Local port 4000 will be bound to the nrepl port on the container, but this can be overridden with an env var, e.g.:

```bash
LEIN_REPL_PORT=4444 \
  TOKEN=<my-exercism-token> \
  TRACK=clojure \
  make run_track
```

### [Python](https://exercism.io/my/tracks/python)
