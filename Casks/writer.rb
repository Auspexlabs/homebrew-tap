cask "writer" do
  version "0.1.3"
  sha256 "3fc186dc85be3b52e28e72c2c0e644eb1a11f66b134efe62a25352f59a0a770b"

  url "https://github.com/Auspexlabs/writer/releases/download/v#{version}/Writer-#{version}-mac.dmg"
  name "Writer"
  desc "Edit Word, Excel, PowerPoint, Markdown and mind-map files"
  homepage "https://github.com/Auspexlabs/writer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Writer.app"
  binary "#{appdir}/Writer.app/Contents/MacOS/writer"

  zap trash: [
    "~/Library/Application Scripts/cn.thewriter.app",
    "~/Library/Application Support/cn.thewriter.app",
    "~/Library/Application Support/Writer",
    "~/Library/Caches/cn.thewriter.app",
    "~/Library/Containers/cn.thewriter.app",
    "~/Library/Preferences/cn.thewriter.app.plist",
    "~/Library/WebKit/cn.thewriter.app",
  ]
end
