# KCPTUN Plugins

This repository features:

* [SIP003](https://github.com/shadowsocks/shadowsocks-org/issues/28)-compatible KCPTUN and UDP2RAW plugins for Shadowsocks
* One-key setup of Shadowsocks+KCPTUN+UDP2RAW
* Automatic upgrade of latest KCPTUN and UDP2RAW binaries
* IPv6 support

## Usage

Install:

```bash
# make install
```

Server:

```bash
ss-server ... --plugin kcptun-server-plugin --plugin-opts "key=YOUR_KEY;raw=YES"
```

Client:

```bash
ss-local ... --plugin kcptun-client-plugin --plugin-opts "key=YOUR_KEY;raw=YES"
```

Client for proxying only:

```bash
ss-proxy -s Server_IP -p Server_Port -l Local_Port --plugin kcptun-client-plugin --plugin-opts "key=YOUR_KEY;raw=YES"
```

Upgrade binaries:

```bash
kcptun-server-plugin upgrade
kcptun-client-plugin upgrade
```

Upgrade binaries with proxychains-ng:

```bash
PROXY=proxychains4 kcptun-server-plugin upgrade
PROXY=proxychains4 kcptun-client-plugin upgrade
```

Note: you may also place predownloaded archives in /tmp if the network condition is really bad.

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
* dscp: KCPTUN dscp (``--dscp``)
* nocomp: ``YES`` to disable KCPTUN compression (``--nocomp``)
* quiet: ``YES`` to suppress KCPTUN output (``--quiet``)
* params: specify other parameters like ``params=\"--log /tmp/kcptun.err.log\"``

UDP2RAW:

* raw: ``YES`` to enable UDP2RAW
* raw_config: UDP2RAW config. Override all other UDP2RAW options. (``--conf-file``)
* raw_mode: UDP2RAW mode (``--raw-mode``)
* key: KCPTUN and UDP2RAW encryption key (``--key``)
* raw_cipher: UDP2RAW cipher mode (``--cipher-mode``)
* raw_auth: UDP2RAW auth mode (``--auth-mode``)
* raw_params: specify other parameters like ``raw_params=\"--seq-mode 0\"``

## Todo

* [ ] Support for multiple interface binding

## Related Projects

* [KCPTUN](https://github.com/xtaci/kcptun)
* [UDP2RAW](https://github.com/wangyu-/udp2raw-tunnel)
