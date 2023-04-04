# Sendbird SyncManager for iOS sample 

![Platform](https://img.shields.io/badge/platform-iOS-orange.svg)
![Languages](https://img.shields.io/badge/language-Objective--C-orange.svg)

## Deprecation Note (v3)
:warning: Please note that SyncManager along with Sendbird’s SDK v3 will be deprecated by **July 2023**. You may still use SyncManager at your choice, but no new updates or bug fixes will be made to SDK v3 and SyncManager.

**We recommend clients to plan their migration to SDK v4 and Local caching embeded in v4 as early as possible as there are breaking changes.** We also provide prioritized support for migration and any issues related to v4. SDK v4 provides far richer and robust features in Websocket, Polls, Scheduled Messages, Pinned Message, and many more. So try it out now! ([Chat SDK v4 Local caching samples](https://github.com/sendbird/sendbird-chat-sample-ios/tree/main/Apps/LocalCachingGroupChannel))

<br />

## Introduction

SyncManager for iOS is a Chat SDK add-on that optimizes the user caching experience by interlinking the synchronization of the local data storage with the chat data in Sendbird server through an event-driven structure. Provided here is a SyncManager for iOS sample to experience first-hand the benefits of Sendbird’s SyncManager.

### Benefits

Sendbird SyncManager provides the local caching system and data synchronization with the Sendbird server, which are run on an event-driven structure. According to the real-time events of the messages and channels, SyncManager takes care of the background tasks for the cache updates from the Sendbird server to the local device. By leveraging this systemized structure with connection-based synchronization, SyncManager allows you to easily integrate the Chat SDK to utilize all of its features, while also reducing data usage and offering a reliable and effortless storage mechanism. 

### More about Sendbird SyncManager for iOS

Find out more about Sendbird SyncManager for iOS at [SyncManager for iOS doc](https://sendbird.com/docs/syncmanager/v1/ios/getting-started/about-syncmanager). If you need any help in resolving any issues or have questions, visit [our community](https://community.sendbird.com).


<br />

## Before getting started

This section provides the prerequisites for testing Sendbird SyncManager for iOS sample app.

### Requirements

The minimum requirements for SyncManager for iOS are:

- iOS 8.0+
- [Chat SDK for iOS](https://github.com/sendbird/sendbird-ios-framework) is 3.0.178 or higher

### Try the sample app using your data 

If you would like to try the sample app specifically fit to your usage, you can do so by replacing the default sample app ID with yours, which you can obtain by [creating your Sendbird application from the dashboard](https://sendbird.com/docs/chat/v3/ios/getting-started/install-chat-sdk#2-step-1-create-a-sendbird-application-from-your-dashboard). Furthermore, you could also add data of your choice on the dashboard to test. This will allow you to experience the sample app with data from your Sendbird application. 

<br />

## Getting started

This section explains the steps you need to take before testing the iOS sample app.

### Create a project

Create a project to get started: Sendbird SyncManager for iOS supports both `Objective-C` and `Swift`.

### Install SyncManager for iOS

You can install SyncManager for iOS sample app through either [CocoaPods](https://cocoapods.org/) or [Carthage](https://github.com/Carthage/Carthage).  

> Note: Sendbird SyncManager for iOS is Sendbird Chat SDK-dependent. If you install the SyncManager, CocoaPods and Carthage will automatically install the Chat SDK for iOS.

#### - CocoaPods

1. Add below into your `Podfile` on Xcode.

```bash
platform :ios, '8.0'
use_frameworks!

target YOUR_PROJECT_TARGET do
    pod 'SendBirdSyncManager'
end
```

2. Install the Sendbird SyncManager framework through CocoaPods.

```bash
pod install
```

3. Update the Sendbird SyncManager framework through CocoaPods.

```bash
pod update SendBirdSyncManager
```

Now you can see the installed Sendbird SyncManager framework by inspecting `YOUR_PROJECT.xcworkspace`.

#### - Carthage

1. Add `github "sendbird/sendbird-syncmanager-ios"` to your `Cartfile`.
2. Run `carthage update`.
3. Go to your Xcode project's **General** settings. Open `<YOUR_XCODE_PROJECT_DIRECTORY>/Carthage/Build/iOS` in the **Finder** and drag `SendBirdSyncManager.framework` to the **Embedded Binaries** section in Xcode. Make sure **Copy items if needed** is selected and click **Finish**.
