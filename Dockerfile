# SPDX-License-Identifier: Apache-2.0
# Copyright 2016-2020, Intel Corporation

FROM ubuntu:20.04

RUN apt update && \
	DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
	sl \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

COPY . /project

ENTRYPOINT ["/entrypoint.sh"]
