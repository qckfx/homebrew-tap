cask "qckfx" do
  version "0.1.0"
  sha256 "1c156ef661ba28ff9389d2fa4ae987c4c135276ee0242e880c05dcbf39b9cde4"

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
