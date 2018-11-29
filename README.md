# Onelearning
 This git is for learning purpose.
 Contains a hello world contract.
 
1º passo: geth --datadir C:\Users\renan.kruger\Desktop\Rede\Blockchain init C:\Users\renan.kruger\Desktop\Rede\Genesis\genesis.json
 
2º passo: bootnode --genkey=boot.key

3º passo: bootnode --nodekey=boot.key
 
4º passo: geth --fast --cache 512 --networkid 2133 --datadir C:\Users\renan.kruger\Desktop\Rede\Blockchain --rpc --rpccorsdomain="*" --rpcaddr "0.0.0.0" --port 30303 console
 
 
geth attach ipc:\.\pipe\geth.ipc


