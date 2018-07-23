# The Barest

This is the minimal code Aragon-cli needs to do its ~~shit~~ magic.

Deploys a DAO kit with Voting app and Token Manager.

Ready to start more complex projects.

## Instructions

To install everything needed:

- Option 1:

```sh
npm i -g @aragon/cli && aragon init myapp ottodevs/the-barest
```

- Option 2:

```sh
git clone https://github.com/ottodevs/the-barest && npm i
```

To deploy the DAO kit and open in the Aragon Wrapper App:

```sh
npm start
```

## Demystifications

- Migrations folders and files are not needed for the kit deployment
- Aragon client and other heavy deps are not needed
- Truffle config, manifest and arapp are mandatory, otherwise aragon-cli will fail
- Manifest.json data fields are mandatory, but content is not needed at all, since the app is not being actually deployed
- Arapp.json appName, path and roles are mandatory (roles must be an array, but can be empty)
- No scripts needed at all in package.json
- No app or other folders besides contract folder are needed to work
- I tried to implement Kit as an AragonApp inherit contract to get rid of App.sol, but does not work because conflicts with Kit constructor (maybe doable if you are a solidity ninja)
