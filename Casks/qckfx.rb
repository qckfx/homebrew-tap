cask "qckfx" do
  version "0.1.4"
  sha256 "b02f9f4d3a63bba1e6b18dfa4ce51a246a202f6a27bd4c45b6f24055266adcbf"

  url "https://github.com/qckfx/qckfx/releases/download/v#{version}/qckfx-#{version}.zip"
  name "qckfx"
  desc "Screenshot-based iOS testing tool"
  homepage "https://qckfx.com"

  depends_on macos: ">= :ventura"

  app "qckfx.app"

  zap trash: [
    "~/Library/Application Support/qckfx",
    "~/Library/Caches/qckfx",
    "~/Library/Preferences/com.qckfx.qckfx.plist",
  ]
end
