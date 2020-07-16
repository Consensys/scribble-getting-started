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

    function addAdminInternal(address addr) internal {
        admins[addr] = true;
    }
}
