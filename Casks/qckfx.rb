cask "qckfx" do
  version "0.2.22"
  sha256 "6ff99257f7ee7fa9e42fa2630df55b0ca130d1261596e8200041979effa88887"

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
