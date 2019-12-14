# ipxe builder

## why

Because if you want to break the chainloading loop (http://ipxe.org/howto/chainloading), and don't have a dhcpd.config to edit, you will want to compile ipxe with an embedded script.
Also see http://ipxe.org/embed

## how

Building this container makes `/ipxe/src/bin-x86_64-efi/ipxe.efi`, which you can use in your dhcp config as the file to boot.
When it is loaded, it tries to chainload `/main.ipxe`, which is the ipxe file you want to make..


## special needs

* http://ipxe.org/appnote/buildtargets
