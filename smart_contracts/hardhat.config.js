require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    GoerliETH: {
      url: "https://eth-goerli.g.alchemy.com/v2/7aNANO0u4BbNgfrEsobLwaN46f4ISS8H",
      accounts: [
        "6ff073ebf06b028985193bdd308dc3b7bb5968fd3c574c7090775c2fb8beefe4",
      ],
    },
  },
};
