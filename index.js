import {AppRegistry} from 'react-native'
import App from './App';
import App2 from './App2';
AppRegistry.registerComponent('App',()=>App);
AppRegistry.registerComponent('App2',()=>App2);

AppRegistry.registerComponent('App3',()=>App2);
