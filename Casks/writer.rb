cask "writer" do
  version "0.1.2"
  sha256 "966c2cfa2a4bb783d04dced292578665bc71ac96019e495e9f3461188b3b6ad5"

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
