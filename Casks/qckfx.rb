cask "qckfx" do
  version "0.2.7"
  sha256 "944cea545c88f1cf2a88c5bf911cd26f201dc0a0eb5f6925003af214fce3a2c1"

  url "https://github.com/qckfx/qckfx/releases/download/v#{version}/qckfx-#{version}.dmg"
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
