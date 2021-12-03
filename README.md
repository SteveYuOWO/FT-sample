STEVE Token
===================

## For near developmenet Challenge 6

### Examples

```
./build.sh
near dev-deploy --wasmFile res/fungible_token.wasm

near call $ID new_steve_token --accountId $ID
near call $ID ft_metadata --accountId $ID

near call $ID get_balance --accountId $ID
# not registered
near call $ID get_balance --accountId steveyu.testnet

TXJSON='{"receiver_id": "steveyu.testnet", "amount": 10}'
near call $ID transfer $TXJSON --accountId $ID
```

