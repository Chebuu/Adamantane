.DEFAULT_GOAL := default
DEFAULT_TASKS := identifiers cohort features

compress-data:
	bash bin/compress-data.sh data.tar.gz data
	@echo $(gzip -l data.tar.gz)
	@echo $(gzip -tv data.tar.gz)

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
	@echo "Running default build..."
	$(MAKE) $(foreach task, $(DEFAULT_TASKS), build-$(task) export-$(task))
	@echo "Compressing data/ --> data.tar.gz"
	$(MAKE) compress-data
	@echo "# Build completed successfully\n"
	@echo "# Data exported to data.tar.gz\n"
	@echo "# Done\n"
	