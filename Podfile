source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
inhibit_all_warnings!
use_frameworks!

plugin 'cocoapods-keys', {
    :project => "TweetsCounter",
    :keys => [
        "FABRIC_API_KEY",
        "FABRIC_BUILD_SECRET",
    ]
}

target 'TweetsCounter' do
 pod 'Fabric'
 pod 'Crashlytics'
 pod 'TwitterKit'
 pod 'TwitterCore'
 pod 'RealmSwift'
    
 pod 'Alamofire'
 pod 'AlamofireImage'
 pod 'Unbox'
 pod 'ValueStepper'
 pod 'SwiftyUserDefaults'
 # Used to tap hashtags and links
 pod 'ActiveLabel'
 # Custom pull to refresh component
 pod 'PullToRefresher'

 target 'TweetsCounterTests' do
    inherit! :search_paths
 end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
