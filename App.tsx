/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from "react";
import {
    Text,
    View,
    TouchableOpacity,
    StyleSheet,
    ViewStyle,
    GestureResponderEvent,
    TextStyle,
} from "react-native";
import FrameExtractor from "FrameExtractor";

interface Style {
    container: ViewStyle;
    text: TextStyle;
}

const style = StyleSheet.create<Style>({
    container: {
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
    },
    text: {},
});

export default class App extends React.Component<{}> {
    onPress = (e: GestureResponderEvent): void => {
        FrameExtractor.hello("Sarah");
    }

    render(): JSX.Element {
        return (
            <View style={style.container}>
                <TouchableOpacity onPress={this.onPress}>
                    <Text style={style.text}>Start</Text>
                </TouchableOpacity>
            </View>
        );
    }
}

