cask "downix" do
  version "1.0.3"
  sha256 "0a2c26e7e66be77eeac6e2fc0b3ffd8daac08c6ee8eaa7f93e39ad0bd81e26da"

  url "https://github.com/kms69/Downix/releases/download/v#{version}/Downix-#{version}.dmg"
  name "Downix"
  desc "Download manager with multi-connection speed, resume and video downloads"
  homepage "https://github.com/kms69/Downix"

  depends_on macos: ">= :ventura"

  app "Downix.app"

  zap trash: [
    "~/Library/Application Support/DownloadManager",
    "~/Library/Caches/DownloadManager",
    "~/Library/Caches/com.downloadmanager.app",
    "~/Library/Logs/DownloadManager",
  ]
end
