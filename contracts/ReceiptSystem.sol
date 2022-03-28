pragma solidity >=0.4.22 <0.8.0;


contract ReceiptSystem{
    uint public ReceiptCount = 0;
    string public receiptmessage = "hello world";
    struct Receipt{
        uint Rid;
        uint Cid;
        uint Sid;
        string date;
        string time;
        
    }
    event LogReceipt(uint Rid, uint Cid, uint Sid, string date, string time);
    mapping(uint => Receipt) private Receipts;
    function insertReceipt(
        uint _Rid,
        uint _Cid,
        uint _Sid,
        string memory _RDate,
        string memory _Rtime)
        public {
            ReceiptCount++;
            Receipts[ReceiptCount].Rid = _Rid;
            Receipts[ReceiptCount].Cid = _Cid;
            Receipts[ReceiptCount].Sid = _Sid;
            Receipts[ReceiptCount].date = _RDate;
            Receipts[ReceiptCount].time = _Rtime;
            emit LogReceipt(_Rid, _RDate, _Rtime);
    }
    function getReceipt(
        uint index
    )
    public 
    view
    returns(uint _Rid, uint _Cid, uint _Sid, string memory _Rdate, string memory _Rtime){
        return(
            Receipts[index].Rid,
            Receipts[index].Cid,
            Receipts[index].Sid,
            Receipts[index].date,
            Receipts[index].time);
        
    }
    function getReceiptCount() 
    public 
    view
    returns(uint count){
        return ReceiptCount;
    }
    
}
