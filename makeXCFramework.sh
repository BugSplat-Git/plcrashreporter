rm -rf archives/*
rm -rf xcframeworks/*
xcodebuild archive -project CrashReporter.xcodeproj -scheme "CrashReporter iOS Framework" -destination "generic/platform=iOS" -archivePath "archives/CrashReporter-iOS"
xcodebuild archive -project CrashReporter.xcodeproj -scheme "CrashReporter iOS Framework" -destination "generic/platform=iOS Simulator" -archivePath "archives/CrashReporter-iOS_Simulator"
xcodebuild archive -project CrashReporter.xcodeproj -scheme "CrashReporter iOS Framework" -destination "generic/platform=macOS,variant=Mac Catalyst" -archivePath "archives/CrashReporter-Mac_Catalyst"
xcodebuild archive -project CrashReporter.xcodeproj -scheme "CrashReporter macOS Framework" -destination "generic/platform=macOS" -archivePath "archives/CrashReporter-macOS"
xcodebuild -create-xcframework -archive archives/CrashReporter-iOS.xcarchive -framework CrashReporter.framework -archive archives/CrashReporter-iOS_Simulator.xcarchive -framework CrashReporter.framework -archive archives/CrashReporter-Mac_Catalyst.xcarchive -framework CrashReporter.framework -archive archives/CrashReporter-macOS.xcarchive -framework CrashReporter.framework -output xcframeworks/CrashReporter.xcframework
