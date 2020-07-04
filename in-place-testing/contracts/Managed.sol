pragma solidity "0.5.16";
contract Managed {
    address owner;
    mapping(address=>bool) admins;

    constructor() public {
        owner = msg.sender;
        admins[owner] = true;
    }

    modifier OwnerOnly {
        assert(owner == msg.sender);
        _;
    }

    modifier AdminOnly {
        assert(admins[msg.sender]);
        _;
    }

    /// if_succeeds {:msg "only owner can add admins"} old(admins[msg.sender]);
    function addAdminInternal(address addr) internal {
        admins[addr] = true;
    }
}
