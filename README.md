This repository provides a container that allows me to do various editorial and
analytical work with the IETF. This includes:

* Keeping local copies of mailing lists for offline reading
* Keeping local copies of Internet Drafts and RFCs for analysis
* Tooling to generate Internet Drafts

As well as other useful tasks.

## Using
To build locally, you will need Docker as well as make present. For macOS users,
this means having at minimum the command line tools installed.

```bash
git clone ... && cd ...
make build
```

Running `make help` will give you a list of all supported options.

## Directory Structure

* `id/` - Internet Drafts. This folder will be > 10Gb when fully downloaded.
* `rfc/` - RFCs

## License
This code is licensed under Apache 2.
