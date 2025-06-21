// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ContractA{
    function getContractAddress() public view returns(address){
        return address(this);
    }

    function getCallerAddress() public view returns(address){
        return msg.sender;
    }

    function getContractBalance() public  view returns(uint256){
        return address(this).balance;
    }

    function getCallerWalletBalance() public view returns(uint256){
        return msg.sender.balance;
    }

    function sendToken(address payable _rec) public payable returns(uint256){
        require(msg.value > 0, "insufficent balance");
        //msg.value = _amount;
        _rec.transfer(msg.value);
        return msg.sender.balance;
    }
}