.DEFAULT_GOAL := default
DEFAULT_TASKS := identifiers cohort features

compress-build:
	bash tar -zcvf data.tar.gz data
	bash echo $(gzip -l data.tar.gz)
	bash echo $(gzip -tv data.tar.gz)

build-cohort: cohort.sql
	bash bin/build-cohort.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic"

export-cohort: 
	bash bin/export-cohort.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic"

build-features: clinical-features/*.sql clinical-scores/*.sql diagnostics/*.sql events/*.sql
	bash bin/build-features.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic" 

export-features: 
	bash bin/export-features.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic"

build-identifiers: identifiers/*.sql
	bash bin/build-identifiers.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic"

export-identifiers:
	bash bin/export-identifiers.sh \
		-h $(or $(PGHOST), false) \
		-p $(or $(PGPORT), false) \
		-d "mimic"

default:
	$(MAKE) $(foreach task, $(DEFAULT_TASKS), build-$(task) export-$(task))
