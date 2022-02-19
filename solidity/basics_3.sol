pragma solidity ^0.5.2;

contract Mycontract{
    enum State {Waiting,Active,Stop}
    State public foot ;
    constructor() public {
        foot=State.Waiting;
    }
    function activate()public {
        foot=State.Active;
    }
    function isactive()public view returns(bool){
      return  foot==State.Active;
    }
}