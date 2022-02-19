pragma solidity ^0.5.1;

contract Escrow{
    address payable public agent;
    mapping(address => uint256) public deposits;
    constructor(address payable _agent) public{
        agent =_agent;
    }
     modifier only_agent{
        require(agent==msg.sender);
        _;
    }
    function deposit_escrow(address payable payee) payable public  {
        uint256 amount =msg.value;
        deposits[payee]=deposits[payee]+amount;
        agent.transfer(amount);
        

    }
    function withdraw(address payable payee) payable public only_agent{
        uint256 amt =deposits[payee];
        deposits[payee]=0;
        payee.transfer(amt);
    }

}