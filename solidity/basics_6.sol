pragma solidity ^0.5.2;

contract Mycontract{
    struct Person{
       string _fname;
       string _last_name;
       uint _id;

    }
    address owner;
    modifier onlyowner{
        require(msg.sender==owner);
        _;
    }
    uint256 now_time=1642961936;
    modifier only_time{
        require(block.timestamp >=now_time);
        _;
    }
    constructor() public{
    owner=msg.sender;
     }
      mapping(uint => Person) public stud;
    uint public counter=0;
    function add_stud(string memory _fname,string memory _last_name) public onlyowner 
    only_time {
        counter_i();
        stud[counter]=Person(_fname,_last_name,counter);}
    function counter_i() internal{
        counter++;
    }
    
}