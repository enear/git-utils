#!/bin/bash

POM_FILENAME="pom.xml"

changelog_path="$1"
changelog_dir="$(dirname "$changelog_path")"
pom_path="${changelog_dir}/${POM_FILENAME}"

version=$(mvn help:evaluate -Dexpression=project.version --batch-mode -f "${pom_path}" | grep -e '^[^\[]')
today=$(date +%Y-%m-%d)

sed -i "s/^## \[Unreleased\]$/## [Unreleased]\n\n## [$version] - $today/g" "${changelog_path}"

sed -r -i "/^\[.*\]: http.*/d" "${changelog_path}"

git_repo=$(git config --get remote.origin.url)

echo "adsdas"
echo "[Unreleased]: $git_repo/branches/compare/$version%0DHEAD" >> "${changelog_path}"

last_tag=$version
git for-each-ref --sort=taggerdate --format '%(refname:short)' refs/tags | while read -r line ; do
	echo $line
	echo "[$line]: $git_repo/branches/compare/$line%0D$last_tag" >> "${changelog_path}"
	last_tag=$line
done