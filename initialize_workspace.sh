#!/bin/bash

set -e

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${script_dir}"

west init -l ./app
west update

source zephyr/zephyr-env.sh
west build -p
