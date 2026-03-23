.PHONY: all clean fmt lint docs spec fix version

all: clean fmt lint docs spec

fmt:
	crystal tool format src/ spec/

spec:
	crystal spec --verbose

lint: lib/ameba/bin/ameba
	lib/ameba/bin/ameba

fix: lib/ameba/bin/ameba
	lib/ameba/bin/ameba --fix

lib/ameba/bin/ameba:
	shards install

docs:
	crystal docs

clean:
	rm -rf docs/

# Bump the version in shard.yml and src/couchdb.cr and commit
# Usage: VERSION=x.y.z make version
version:
	@test -n "$(VERSION)" || (echo "Usage: VERSION=x.y.z make version" && exit 1)
	sed -i 's/^version: .*/version: $(VERSION)/' shard.yml
	sed -i 's/VERSION = ".*"/VERSION = "$(VERSION)"/' src/html-builder.cr
	git add shard.yml src/html-builder.cr
	git commit -m "Bump version to $(VERSION)"

