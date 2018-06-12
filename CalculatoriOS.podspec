

Pod::Spec.new do |s|

s.name               = "CalculatoriOS"

s.version            = "1.2.8"

s.summary         = "CalculatoriOS"

s.homepage        = "hhttps://github.com/iLACB/CalculatoriOS"

s.license              = "MIT"

s.author               = "Luis Cruz"

s.platform            = :ios, "11.0"

s.source              = { :git => "https://github.com/iLACB/CalculatoriOS.git", :tag => "1.2.8" }

s.source_files     = "CalculatoriOS", "CalculatoriOS/**/*.{h,m,swift}"
end
