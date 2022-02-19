# PancakeSwap Flash Loan
Flash Loans are loans that allow the borrowing of an asset, as long as the borrowed amount (and a fee) is returned before the end of the transaction. Those types of loans enable you to perform actions without using your funds for a really small percentage fee (0.09% at the time of writing on Aave and 0% on Dy/Dx). Flash loans can be used for arbitrage across DEXes, liquidation of positions on protocols like Dy/Dx, and migration of CDPs for example.

[![Arbitrage Flash Loan exploit](https://img.youtube.com/vi/tKhbCpHM2gc/0.jpg)](https://www.youtube.com/watch?v=tKhbCpHM2gc)

Another nice way to get ideas on what to build with flash loans is checking some transactions that are using flash loans and check what they are doing on a block explorer.

Currently available flash loans protocols only offer to borrow one asset per transaction, but if you have ETH it is easy for example easy to get DAI by minting them or even use 1inch aggregator to swap to any other token.

## Instructions ##
• Visit https://remix.ethereum.org
• Create a new file and name it contract.sol
• Copy flashloan-contract.sol in contract.sol
• Click compile and select Compiler v0.5.0+compiler
• Compile the contract - you should get a green check mark
• Click on Deploy & Run Transactions
 - Switch enviroment to Inject Web3
 - Account should be your Metamask connected to Binance Smart Chain Network (How To: https://academy.binance.com/en/articles/connecting-metamask-to-binance-smart-chain)
 - Click on drop down arrow under 'Deploy" and create your token. Fill in your Token Name, Token Symbol, and Loan Amount
 - Click the Orange 'Transact' button and pay the fee to establish your token on the Smart Chain
• Under Deploy Contracts you should see another drop down arrow Arbitrageflashloan at the Binance Smart Chain address.
 - Click the copy button to the right to copy the Binance Smart Chain address of your newly launched contract
• Open Metamask and click send.
 - enter the Binance Smart Chain address you just copied to your clipboard uner the deploy contracts.
 - Pay 0.3 BNB to the Flashloan contract and wait for transaction confirmation
 - press the red 'action' button to execute the arbitrage flash loan. Pay to minimal fee for the transaction.
 
 ## Arbitrage Flash Loan Complete - Cheeck Wallet ##
 
 <i>Note:</i> The loan process can only be executed once every three hours. If it fails try again within 30 mins as the market may be violtile which will effect the flash loan. If it contiues to fail increase the Flashloan contract price from 0.3 BNB to something higher to compensate for the Smart Chain activity.
 
