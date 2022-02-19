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
contract my_ct  is ERC20TOKEN{
    string public symbol;
    address[] public owners;
    uint public owner_count;
 
 constructor(string memory _symb,string memory _name) ERC20TOKEN(_name) public{
      symbol=_symb;
      
      

 }
 function mint() public{
      super.mint();
      owner_count++;
      owners.push(msg.sender);

}}

