pragma solidity ^0.5.1;

contract saving{

    address  payable beneficary;
    uint256  release_time;
    constructor(address payable _beneficary,uint256 _release_time)public payable{
           require(_release_time > block.timestamp);
           beneficary=_beneficary;
           release_time=_release_time;

    }
    function release()public payable{
        require(block.timestamp>=release_time);
        address(beneficary).transfer(address(this).balance);
    }
}