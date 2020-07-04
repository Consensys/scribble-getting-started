const Test = artifacts.require("Test");

contract("Test", accounts => {
    it("can add admin", () => {
        return Test.deployed().then(
            async function(instance) {
                await instance.addAdmin(accounts[1], {from: accounts[1]});
            }
        );
    })
})
