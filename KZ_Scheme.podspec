
Pod::Spec.new do |s|

    s.name = 'KZ_Scheme'
    s.version = '0.1'
    s.summary = 'iOS scheme.'
    s.homepage = 'https://github.com/KieronZhang/KZ_Scheme'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}
    s.platform = :ios, '8.0'
    s.source = {:git => 'https://github.com/KieronZhang/KZ_Scheme.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'Foundation'
    s.vendored_frameworks = 'KZ_Scheme/KZ_SchemeFramework.framework'
    s.requires_arc = true

end
