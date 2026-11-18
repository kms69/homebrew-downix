cask "downix" do
  version "1.0.5"
  sha256 "095c63e73e3517d20a4748f69a9f68f44085dad491eae9f7b4207cde7b6a2695"

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
