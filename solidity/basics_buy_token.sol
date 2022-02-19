pragma solidity ^0.5.1;

contract Mycontract{
    mapping(address=>uint256) public balances;
    address payable wallet;
    event purchase(
      address _buyer,
      uint256 _amount
    );
    constructor(address payable _wallet) public{
        wallet =_wallet;
    }
    function() external payable{
        buy_token();
    }
    function buy_token() public payable{
        balances[msg.sender]+=1;
        wallet.transfer(msg.value);
        emit purchase(msg.sender,1);
    }


}