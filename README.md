# BlockInfo-Decoder
Decode the blockinfo payload from the Hyperledger Sawtooth

## Build

Run the following command from your machine, this will generate
a binary that can be used to decode the BlockInfo transaction
payload.

```shell_script
$ make
```

## Run

Once the binary is available, run it as follows

```shell_script
$ ./blockinfo-decoder <Block Info Config Payload>
```
