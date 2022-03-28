pragma solidity >=0.4.22 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ReceiptSystem.sol";

contract TestReceiptSystem{
    ReceiptSystem receiptsystem = ReceiptSystem(DeployedAddresses.ReceiptSystem());

    uint receiptid = 1;
    string receiptdate = '2022-03-27';
    string receipttime = '4:19PM';

    
    function testReceiptCanAdd() public {
        uint retid = receiptsystem.addReceipt(receiptid,receiptdate,receipttime);

        Assert.equal(retid,receiptid,"Receipt id should match waht is returned");
    }
    
}