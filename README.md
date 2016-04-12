# WatchApp

An attempt to get unit tests working for a watchOS 2 app and framework.

## Watch Test Targets

The `WatchAppWatchTests` and `WatchFrameworkTests` targets were set up initially as iOS Unit Testing Bundles. Afterwards, the following build settings were modified.

### `SDKROOT`

This was changed from "Latest iOS" to "Latest watchOS".

### `TEST_HOST`

Modifying the `SDKROOT` took care of pointing `BUILT_PRODUCTS_DIR` to the `Debug-watchsimulator`
directory, but the `TEST_HOST` had the name of the original iOS app. This was modified to
the following values:

- `$(BUILT_PRODUCTS_DIR)/WatchApp WatchKit Extension.appex/WatchApp WatchKit Extension`
- `$(BUILT_PRODUCTS_DIR)/WatchFramework.framework/WatchFramework`

### Dependent Frameworks

Copy the XCTest and IDEBundleInjection frameworks into the special `AppleInternal`
folder under WatchSimulator.platform.

```
cd /Applications/Xcode.app/Contents/Developer/Platforms

mkdir -p WatchSimulator.platform/Developer/AppleInternal/Library/Frameworks
mkdir -p WatchSimulator.platform/Developer/AppleInternal/Library/PrivateFrameworks

cp iPhoneSimulator.platform/Developer/Library/Frameworks/XCTest.framework WatchSimulator.platform/Developer/AppleInternal/Library/Frameworks
cp iPhoneSimulator.platform/Developer/Library/PrivateFrameworks/IDEBundleInjection.framework WatchSimulator.platform/Developer/AppleInternal/Library/PrivateFrameworks
```

This gives a warning, but gets the build to work.

```
ld: warning: URGENT: building for watchOS simulator, but linking against dylib (/Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/AppleInternal/Library/Frameworks/XCTest.framework/XCTest) built for iOS. Note: This will be an error in the future.
```

## License

This repo is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for rights and limitations.
