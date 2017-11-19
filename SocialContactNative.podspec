Pod::Spec.new do |s|
  s.name         = "SocialContactNative"
s.version      = "0.0.0"
  s.summary      = "SocialContactNative"
  s.description  = <<-DESC
	                    React description.
			                       DESC
  s.homepage     = "https://github.com/dennis-li"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
							                       LICENSE
										                          }

  s.author       = { "Dennis Lee" => "lixu.dennislee@gmail.com" }

  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/dennis-li/SocialContactNative.git", :tag => s.version }

  s.source_files = 'SocialContactNative/*.{h,m}'
  s.resources = ['SocialContactNative.xcassets']

  s.dependency 'React_debug'
  s.dependency 'DLModulesCenter'

 s.framework = 'SystemConfiguration'
 s.preserve_paths = 'Release'
# s.ios.vendored_libraries = 'Release/libSocialContactNative.a'
					         
# s.library = 'c++'

 s.requires_arc = true
			
  end

