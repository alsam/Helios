# Helios

# install rust on Jetson
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install cargo-deb
```

see [Debian packages from Cargo projects](https://github.com/kornelski/cargo-deb)

# test runs
```
cd heliocron && TZ=EST cargo run -- --latitude 40.7128N --longitude 74.0060W  report # New York
    Finished dev [unoptimized + debuginfo] target(s) in 0.02s
     Running `target/debug/heliocron --latitude 40.7128N --longitude 74.0060W report`
LOCATION
--------
Latitude: 40.7128N
Longitude: 74.0060W

DATE
----
2022-01-17 12:00:00 -05:00

Solar noon is at:         2022-01-17 12:06:10 -05:00
The day length is:        9h 38m 32s

Sunrise is at:            2022-01-17 07:16:54 -05:00
Sunset is at:             2022-01-17 16:55:26 -05:00

Civil dawn is at:         2022-01-17 06:46:56 -05:00
Civil dusk is at:         2022-01-17 17:25:25 -05:00

Nautical dawn is at:      2022-01-17 06:13:18 -05:00
Nautical dusk is at:      2022-01-17 17:59:02 -05:00

Astronomical dawn is at:  2022-01-17 05:40:35 -05:00
Astronomical dusk is at:  2022-01-17 18:31:45 -05:00
```

```sh
cd heliocron && cargo run -- --latitude 55.7558N --longitude 37.6173E  report # Moscow
    Finished dev [unoptimized + debuginfo] target(s) in 0.02s
     Running `target/debug/heliocron --latitude 55.7558N --longitude 37.6173E report`
LOCATION
--------
Latitude: 55.7558N
Longitude: 37.6173E

DATE
----
2022-01-18 12:00:00 +03:00

Solar noon is at:         2022-01-18 12:39:53 +03:00
The day length is:        7h 48m 15s

Sunrise is at:            2022-01-18 08:45:46 +03:00
Sunset is at:             2022-01-18 16:34:01 +03:00

Civil dawn is at:         2022-01-18 08:02:09 +03:00
Civil dusk is at:         2022-01-18 17:17:38 +03:00

Nautical dawn is at:      2022-01-18 07:15:35 +03:00
Nautical dusk is at:      2022-01-18 18:04:12 +03:00

Astronomical dawn is at:  2022-01-18 06:31:28 +03:00
Astronomical dusk is at:  2022-01-18 18:48:18 +03:00
```
