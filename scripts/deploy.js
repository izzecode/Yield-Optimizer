const hre = require("hardhat");

async function main() {
  const YieldOptimizer = await hre.ethers.getContractFactory("YieldOptimizer");
  const yieldOptimizer = await YieldOptimizer.deploy();

  await yieldOptimizer.deployed();

  console.log("YieldOptimizer deployed to:", yieldOptimizer.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });