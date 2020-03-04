PROTO_DIR=${PWD}/protos
PROTOBUF_DIR=${PWD}/block_info_pb2

.PHONY: all
all: protobuf generate

protobuf:
	# Create the directory if not present already
	mkdir -p ${PROTOBUF_DIR}
	# Compile the protos from the proto directory, store in the
	# created directory. This is a generated folder.
	protoc --proto_path=${PROTO_DIR} --go_out=${PROTOBUF_DIR} ${PROTO_DIR}/*.proto
	cd ${PROTOBUF_DIR}; go mod init block_info_pb2

generate:
	# Compile the code and generate exe
	go build

clean:
	# Remove the generated protobuf files
	rm -rf ${PROTOBUF_DIR}
