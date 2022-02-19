pragma solidity ^0.5.2;

contract Mycontract{
    struct Person{
       string _fname;
       string _last_name;
       uint _id;

    }
    mapping(uint => Person) public stud;
    uint public counter=0;
    function add_stud(string memory _fname,string memory _last_name) public{
        counter++;
        stud[counter]=Person(_fname,_last_name,counter);

    }
}