# ------------------------------------------------------------------ #
#                              protobuf                              #
# ------------------------------------------------------------------ #
.PHONY:pb/gen
pb/gen:
	@protoc --proto_path=. \
		--go_out=. --go_opt=module=github.com/ucok-man/gradded-challenge-2-p3-contract \
		--go-grpc_out=. --go-grpc_opt=module=github.com/ucok-man/gradded-challenge-2-p3-contract \
		./proto/*.proto

.PHONY:pb/rm
pb/rm:
	@rm -rf pb/*