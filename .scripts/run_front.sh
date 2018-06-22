#!/usr/bin/env bash
echo $PWD
docker run -v "$PWD"/front:/usr/src/app -w /usr/src/app \
	-e PORT=8080 \
	-e HOST=0.0.0.0 \
	--net="host" \
	node:10 npm run dev
