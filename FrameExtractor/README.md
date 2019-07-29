
# react-native-frame-extractor

## Getting started

`$ npm install react-native-frame-extractor --save`

### Mostly automatic installation

`$ react-native link react-native-frame-extractor`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-frame-extractor` and add `RNFrameExtractor.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNFrameExtractor.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNFrameExtractorPackage;` to the imports at the top of the file
  - Add `new RNFrameExtractorPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-frame-extractor'
  	project(':react-native-frame-extractor').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-frame-extractor/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-frame-extractor')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNFrameExtractor.sln` in `node_modules/react-native-frame-extractor/windows/RNFrameExtractor.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Frame.Extractor.RNFrameExtractor;` to the usings at the top of the file
  - Add `new RNFrameExtractorPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNFrameExtractor from 'react-native-frame-extractor';

// TODO: What to do with the module?
RNFrameExtractor;
```
  