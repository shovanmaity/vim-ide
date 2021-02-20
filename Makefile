.PHONY: go-1.16
go-1.16:
	docker build -t quay.io/shovanmaity/vim-ide:go-1.16 \
		-f golang/1.16/Dockerfile .

.PHONY: push-go-1.16
push-go-1.16: go-1.16
	docker push quay.io/shovanmaity/vim-ide:go-1.16
