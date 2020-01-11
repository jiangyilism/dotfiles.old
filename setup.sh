#!/bin/bash

set -xueo pipefail

function main() {
	local -r script_dir="${1}"

	cd "${script_dir}"

	for pkg in $(ls -d */); do
		stow --dir="${script_dir}" --target="${HOME}" --verbose=1 "${pkg}"
	done
}

tput reset
main "$(dirname ${0})"

