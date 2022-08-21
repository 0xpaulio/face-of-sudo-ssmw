include .env

deploy-mainnet:
	@forge script --rpc-url $(MAINNET_RPC_URL__LIVE) \
	--private-key $(PRIVATE_KEY) \
	script/Deploy-Mainnet.s.sol :ContractScript \
	--broadcast

purchase-mainnet:
	@forge script --rpc-url $(MAINNET_RPC_URL__LIVE) \
	--private-key $(PRIVATE_KEY) \
	script/Purchase-Mainnet.s.sol :PurchaseScript \
	--broadcast

deploy-rinkeby:
	@forge script --rpc-url $(RINKEBY_RPC_URL__LIVE) \
	--private-key $(PRIVATE_KEY) \
	script/Deploy-Rinkeby.s.sol :ContractScript \
	--broadcast \
	--verify --etherscan-api-key $(ETHERSCAN_API_KEY)

purchase-rinkeby:
	@forge script --rpc-url $(RINKEBY_RPC_URL__LIVE) \
	--private-key $(PRIVATE_KEY) \
	script/Purchase-Rinkeby.s.sol :PurchaseScript \
	--broadcast