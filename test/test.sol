const { ethers } = require("hardhat");

describe("YieldOptimizer", function () {
  it("Should return the right deposit amount", async function () {
    const YieldOptimizer = await ethers.getContractFactory("YieldOptimizer");
    const yieldOptimizer = await YieldOptimizer.deploy();
    await yieldOptimizer.deployed();
    
    const depositAmount = ethers.utils.parseUnits("1", 18);
    await yieldOptimizer.deposit(depositAmount);
    
    expect(await yieldOptimizer.getDeposit()).to.equal(depositAmount);
  });
});