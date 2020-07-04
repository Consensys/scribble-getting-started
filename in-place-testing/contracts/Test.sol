
pragma solidity "0.5.16";
import "./Managed.sol";

contract Test is Managed {
    function addAdmin(address newAdmin) public {
        addAdminInternal(newAdmin);
    }
}
