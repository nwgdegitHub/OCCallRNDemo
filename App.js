import React, {Component} from 'react';
import {AppRegistry, StyleSheet, Text, View, DeviceEventEmitter} from 'react-native';

export default class App extends Component {

  constructor(props) {
    super(props);
    this.state = {
        notice: '默认值',
    };
  }

  componentWillMount() {
      DeviceEventEmitter.addListener('EventInit', (msg) => {
          let receive = "EventInit: " + msg;
          console.log(receive);
          this.setState({notice: receive});
      });

      DeviceEventEmitter.addListener('EventLogin', (msg) => {
          let receive = "EventLogin: " + msg;
          console.log(receive);
          this.setState({notice: receive});
      });
  }

  render() {

    return (
      <View style={styles.container}>
        <Text>我是RN界面App</Text>
        <Text>{this.state.notice}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
