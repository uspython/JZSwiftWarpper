Pod::Spec.new do |s|
  s.name         = "JZSwiftWarpper"
  s.version      = "0.0.1"
  s.summary      = "Swift Module Warpper"
  s.description  = "Swift Module Warpper"
  s.homepage     = "https://github.com/uspython/JZSwiftWarpper.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Jeff Zhao"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git@github.com:uspython/JZSwiftWarpper.git", :tag => "#{s.version}" }
  s.default_subspecs = 'Code'
  s.subspec 'Code' do |ss|
    ss.source_files = 'Classes/*.{h,m,swift,xib}'
    ss.requires_arc = true
  end
  s.subspec 'DLL' do |ss|
    ss.vendored_frameworks = 'Product/JZSwiftWarpper.framework'
  end
  
end
