near dev-deploy --wasmFile res/fungible_token.wasm

# MASTER stevetoken.steveyu.testnet
ID=stevetoken.steveyu.testnet
near call $ID new_steve_token --accountId $ID
near call $ID ft_metadata --accountId $ID
near call $ID claim --accountId steveyu.testnet

near call $ID get_balance --accountId steveyu.testnet
# not registered
near call $ID get_balance --accountId steveyu.testnet

near call $ID win --accountId steveyu.testnet
near call $ID lose --accountId steveyu.testnet

TXJSON='{"receiver_id": "steveyu.testnet", "amount": 10}'
near call $ID transfer $TXJSON --accountId $ID

near create-account stevetoken.steveyu.testnet --masterAccount steveyu.testnet
near deploy stevetoken.steveyu.testnet res/fungible_token.wasm
# https://explorer.testnet.near.org/accounts/stevetoken.steveyu.testnet
