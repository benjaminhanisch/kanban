#!/bin/bash

docker run -it --rm \
  -p 4000:4000 \
  -v $(pwd):/app \
  -e PHOENIX_HOST=localhost \
  kanban-dev \
  sh -c "mix deps.get && iex -S mix phx.server"