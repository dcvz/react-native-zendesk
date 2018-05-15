require "json"

json = File.read(File.join(__dir__, "package.json"))
package = JSON.parse(json).deep_symbolize_keys

Pod::Spec.new do |s|
  s.name = package[:name]
  s.version = package[:version]
  s.license = package[:license]
  s.authors = package[:author]
  s.summary = package[:description]
  s.source = { :git => 'https://github.com/dcvz/react-native-zendesk.git',  :tag => 'v'+s.version.to_s }
  s.homepage = 'https://github.com/dcvz/react-native-zendesk'
  s.source_files   = 'ios/RNZendesk/*'

  s.platform = :ios, "9.0"

  s.dependency 'ZendeskSDK'
  s.dependency 'React'
  s.ios.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/ZendeskSDK"',
    'OTHER_LDFLAGS' => '-framework ZendeskSDK' 
  }
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }


end