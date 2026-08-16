class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.61/hurozoctl_0.1.61_darwin_arm64.tar.gz"
      sha256 "f234d0bd89223ddb25530f3be75f37eac2bc7bd5c44405cd27e589f74c525717"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.61/hurozoctl_0.1.61_darwin_amd64.tar.gz"
      sha256 "dc458693b13b900fd031c1f6a8314c7dfd3e1327ecf310b22a8e2f8216c11721"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end
