
Pod::Spec.new do |s|

    s.name = 'KZ_Scheme'
    s.version = '0.1.3'
    s.summary = 'iOS & macOS scheme.'
    s.homepage = 'https://github.com/KieronZhang/KZ_Scheme'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang' => 'https://github.com/KieronZhang'}

    s.source = {:git => 'https://github.com/KieronZhang/KZ_Scheme.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true

    s.frameworks = 'Foundation'

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'

    s.ios.vendored_frameworks = 'KZ_Scheme/KZ_Scheme_iOS.framework'
    s.osx.vendored_frameworks = 'KZ_Scheme/KZ_Scheme_macOS.framework'

end
