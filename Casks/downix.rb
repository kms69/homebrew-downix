cask "downix" do
  version "1.0.1"
  sha256 "353d55fe855b311aecc0cceda6c9ebf3ef3d8222d1e3fee67892392b83d59b35"

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
