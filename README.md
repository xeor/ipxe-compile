# ipxe builder

## why

Because if you want to break the chainloading loop (http://ipxe.org/howto/chainloading), and don't have a dhcpd.config to edit, you will want to compile ipxe with an embedded script.
Also see http://ipxe.org/embed

## how

Building this container make:
  * `/ipxe/src/bin-x86_64-efi/ipxe.efi` - for efi to boot ipxe
    * `chain` section in `embed.ipxe` can be like `chain /main.ipxe`
  * `/ipxe/src/bin/undionly.kpxe` - for bios
    * Note that the `chain` section in `embed.ipxe` must contain the protocol, example `chain tftp://10.0.1.5/main.ipxe`..

When it is loaded, it tries to chainload `/main.ipxe`, which is the ipxe file you want to make..


## special needs / more info

* http://ipxe.org/appnote/buildtargets
* https://wiki.fogproject.org/wiki/index.php/IPXE
