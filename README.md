cfengine-smartos-metadata
=========================

Expose SmartOS metadata to CFEngine

This is a cfengine module that reads SmartOS Metadata and exposes it
as CFEngine variables within the `mdata` namespace and CFEngine classes
within the `default` namespace.

This module exposes `sdc` namespace metadata as well as `customer_metadata`.

### Installation

Install using `make`. You'll need super user privilege.

    sudo make

### Usage

Include the following commands promise in one of the inputs.

    commands:
      "$(sys.workdir)/modules/mdata.sh" module => "true";

### Quirks

Metadata multi-line values will have newlines replaced with semi-colons.
This happens most commonly with root_authorized_keys, operator-script
and user-script.
