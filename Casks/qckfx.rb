cask "qckfx" do
  version "0.1.5"
  sha256 "8a926669fc1fc2eccde7dbf8a70e542ff873fc8d727ecb396eb50d84f6f487f0"

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
