module blockinfo-decoder

go 1.14

require (
	block_info_pb2 v0.0.0-00010101000000-000000000000
	github.com/golang/protobuf v1.3.4
)

replace block_info_pb2 => ./block_info_pb2/
