from fastapi import FastAPI
from typing import Union
from web3 import Web3


app = FastAPI()
 
    
@app.get("/eth_balance")
def get_eth_balance():
    # Fill in your infura API key here
    infura_url = "https://aurora-testnet.infura.io/v3/daa842b4b2304faab737d1625b1ed331"
    web3 = Web3(Web3.HTTPProvider(infura_url))
    
    try:
        # Returns balance in wei
        balance = web3.eth.get_balance('0xF94caD41dd5270a1b639Dad3189B1215951931A8') * (10 ** -18)
        return {"eth_balance": balance} 
    except Exception:
        return {"error": "Error en la petición."}