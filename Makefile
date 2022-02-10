###############################

build:
	cd heliocron && cargo build --release
	cargo build --release
	cargo deb
test:
	cd heliocron && cargo run -- --date `date +%F` --latitude 40.7128N --longitude 74.0060W  --time-zone -05:00 report # New York
	cd heliocron && cargo run -- --date `date +%F` --latitude 37.7749N --longitude 122.4194W --time-zone -08:00 report # San Francisco
	cd heliocron && cargo run -- --date `date +%F` --latitude 55.7558N --longitude 37.6173E  --time-zone +03:00 report # Moscow
	cd heliocron && cargo run -- --date `date +%F` --latitude 52.2297N --longitude 21.0122E  --time-zone +01:00 report # Warsaw
	cargo test
