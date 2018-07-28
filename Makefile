build_base_image:
	docker build -t exercism .

run_base:
	docker run -it --rm  -v "$$PWD"/workspace:/workspace exercism:latest

build_track_image:
	docker build -t exercism-io--$$TRACK ./tracks/$$TRACK/

run_track:
	BASE_PATH=$$PWD bash ./tracks/$$TRACK/docker-run.sh
