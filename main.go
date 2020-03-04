package main

import (
	"encoding/base64"
	"fmt"
	"os"

	"block_info_pb2"

	"github.com/golang/protobuf/proto"
)

func main() {
	encoded := os.Args[1]

	decoded, err := base64.StdEncoding.DecodeString(encoded)
	if err != nil {
		fmt.Println("Error occurred " + err.Error())
		os.Exit(1)
	}
	protoMessage := block_info_pb2.BlockInfoTxn{}
	if err := proto.Unmarshal(decoded, &protoMessage); err != nil {
		fmt.Println("Error occurred " + err.Error())
		os.Exit(1)
	}

	fmt.Println(protoMessage)
	fmt.Println(protoMessage.GetBlock().GetBlockNum())
	fmt.Println(protoMessage.GetBlock().GetTimestamp())
}
