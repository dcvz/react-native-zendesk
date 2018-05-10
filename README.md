# react-native-zendesk
React Native bridge to Zendesk Support SDK v2 on iOS and Android. 

## Installation
1. Add the package via yarn or npm
```
yarn add react-native-zendesk
npm install --save react-native-zendesk
```

2. Link the modules to your native projects
```
react-native link react-native-zendesk
```

## Getting Started
### Initializing the Support SDK (Required)
```js
const config = {
  zendeskUrl: ZENDESK_URL,
  appId: ZENDESK_APP_ID,
  clientId: ZENDESK_CLIENT_ID,
};

Zendesk.initialize(config);
```

### Setting an identity (Required)
#### Setting a unique identity
```js
Zendesk.identifyJWT(USER_TOKEN);
```

### Adding Help Center
```ts
// possible options to pass to the help center
interface Options {
  hideContactSupport?: boolean
}

Zendesk.showHelpCenter(OPTIONS);
```
