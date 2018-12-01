const HDWalletProvider = require('truffle-hdwallet-provider')
const mnemonic = ''

module.exports = {
    solc: {
        optimizer: {
            enabled: true,
            runs: 200
        }
    },
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "*", // Match any network id
            gas: 4500000
        },
        rinkeby: {
            provider: function() {
                return new HDWalletProvider(process.env.mnemonic || mnemonic, 'https://rinkeby.infura.io/v3/', 0)
            },
            network_id: 4,
            gas: 4906206,
            gasPrice: 10000000000
        }
    }
};