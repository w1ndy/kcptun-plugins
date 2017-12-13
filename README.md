# KCPTUN Plugins

SIP003-compatible KCPTUN and UDP2RAW plugins for Shadowsocks.
Latest KCPTUN and UDP2RAW binaries will be automatically downloaded at the first-time run.

## Usage

Install:

```bash
make install
```

Server:

```bash
ss-server ... --plugin kcptun-server-plugin --plugin-opts "key=YOUR_KEY;raw=YES"
```

Client:

```bash
ss-local ... --plugin kcptun-client-plugin --plugin-opts "key=YOUR_KEY;raw=YES"
```

Upgrade binaries:

```bash
kcptun-server-plugin upgrade
kcptun-client-plugin upgrade
```

## Plugin Options

KCPTUN:

* config: KCPTUN config. Override all other KCPTUN options. (``-c``)
* key: KCPTUN and UDP2RAW encryption key (``--key``)
* crypt: KCPTUN encryption (``--crypt``)
* mode: KCPTUN mode (``--mode``)
* mtu: KCPTUN MTU (``--mtu``)
* sndwnd: KCPTUN send window (``--sndwnd``)
* rcvwnd: KCPTUN receive window (``--rcvwnd``)
* datashard: KCPTUN datashard (``--datashard``)
* parityshard: KCPTUN parityshard (``--parityshard``)
* parityshard: KCPTUN parityshard (``--parityshard``)
* dscp: KCPTUN dscp (``--dscp``)
* nocomp: ``YES`` to disable KCPTUN compression (``--nocomp``)
* quiet: ``YES`` to suppress KCPTUN output (``--quiet``)
* params: specify other parameters like ``params=\"--log /tmp/kcptun.err.log\"``

UDP2RAW:

* raw: ``YES`` to enable UDP2RAW
* raw_config: UDP2RAW config. Override all other KCPTUN options. (``--conf-file``)
* raw_mode: UDP2RAW mode (``--raw-mode``)
* key: KCPTUN and UDP2RAW encryption key (``--key``)
* raw_cipher: UDP2RAW cipher mode (``--cipher-mode``)
* raw_auth: UDP2RAW auth mode (``--auth-mode``)
* raw_params: specify other parameters like ``raw_params=\"--seq-mode 0\"``
