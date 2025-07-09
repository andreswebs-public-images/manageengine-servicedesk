# manageengine-servicedesk

Dockerized [ManageEngine ServiceDesk Plus](https://www.manageengine.com/products/service-desk/) for evaluation and testing purposes.

## Local Build

Optionally set the UID and GID for the image:

```sh
export PUID="2000"
export PGID="2000"
```

```sh
./.script/local-build.sh
```

## Local Run

```sh
./.script/run.sh
```

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE).

## Acknowledgements

Based on: <https://github.com/Azlaroc/manageengine-sdp>

## References

<https://www.manageengine.com/products/service-desk/sdpod-v3-api/>

<https://help.sdpondemand.com/home>
