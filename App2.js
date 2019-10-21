import React, {Component} from 'react';
import {AppRegistry, StyleSheet, Text, View,NativeModules} from 'react-native';
const NativeInteraction = NativeModules.NativeInteraction;

export default class App2 extends Component {

  transferIOS = () => {
    NativeInteraction.RNTransferIOS();
  }

  transferIOS1 = () => {
    NativeInteraction.RNTransferIOSWithParameter('{\'para1\':\'rndata1\',\'para2\':\'rndata2\'}');
  }

  transferIOS2 = () => {
    NativeInteraction.RNTransferIOSWithCallBack((data) => {
      this.setState({notice: data});
    });
  }

  transferIOS3 = () => {
    NativeInteraction.RNTransferIOSWithParameterAndCallBack('rndata1','rndata2').then(result =>{
      let jsonString = JSON.stringify(result);
      this.setState({notice: jsonString});
    }).catch(error=>{
    });
  }

  render() {

    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>我是RN界面App2</Text>
        <Button
          onPress={this.transferIOS}
          title="RN调用iOS（无回调无参数）"
          color="#841584"
          />
        <Button
          onPress={this.transferIOS1}
          title="RN调用iOS（有参数）"
          color="#841584"
          />
        <Button
          onPress={this.transferIOS2}
          title="RN调用iOS（有回调）"
          color="#841584"
          />
        <Button
          onPress={this.transferIOS3}
          title="RN调用iOS（有参数有回调）"
          color="#841584"
          />
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
