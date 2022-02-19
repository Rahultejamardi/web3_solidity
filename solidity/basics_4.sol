pragma solidity ^0.5.2;

contract Mycontract{
    struct Person{
       string _fname;
       string _last_name;
       int _id;

    }
    Person[] public stud;
    int public counter;
    function add_stud(string memory _fname,string memory _last_name,int  _id) public{
        stud.push(Person(_fname,_last_name,_id));
        counter++;
    }
}