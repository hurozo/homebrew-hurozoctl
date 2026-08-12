class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.56/hurozoctl_0.1.56_darwin_arm64.tar.gz"
      sha256 "50fbd78e194b89bf429cdfb89bb2871fb08b0aaa73f7f6b62ad1a09eff472358"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.56/hurozoctl_0.1.56_darwin_amd64.tar.gz"
      sha256 "b0f629f87460634237424e6724ae5bf08c1145eebfe031f45cd86490fb74790c"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
