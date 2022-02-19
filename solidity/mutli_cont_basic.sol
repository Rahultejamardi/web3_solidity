pragma solidity ^0.5.7;
contract ERC20TOKEN{
 string  public _name;
 mapping(address=>uint256) public balances;
 constructor(string memory nam) public{
     _name=nam;
 }
 function mint() public{
     balances[tx.origin]++;
 }}
contract my_ct  {
 string  public symbol ;
 address payable wallet;
 address public token;
 constructor(string memory symb,address payable _wallet, address _token)  public{
      symbol=symb;
      wallet=_wallet;
      token=_token;

 }
 function buy() payable public{
      ERC20TOKEN(address(token)).mint();
      wallet.transfer(msg.value);
 }

}

