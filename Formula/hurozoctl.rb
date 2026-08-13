class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.59/hurozoctl_0.1.59_darwin_arm64.tar.gz"
      sha256 "2fd2dd47fa3468ecb4afee79b52cd1e3b7259e37f0f15ee8a1b62ceecab435a6"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.59/hurozoctl_0.1.59_darwin_amd64.tar.gz"
      sha256 "783ae9f155ea14abc9e60aba99e77612e511784b9f0980421f74710733cd853f"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
