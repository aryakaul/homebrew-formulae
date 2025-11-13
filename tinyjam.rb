require "language/python/virtualenv"
class Tinyjam < Formula
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://files.pythonhosted.org/packages/7e/02/c6ab98aba1d399aabd61a161e2c7eaf6d9f1566367a4106ae5a6d5481c72/tinyjam-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "7a8a509b55ea370874262a5824ccda4f5c4aef56a5b7a37abdcd0ed8fc6427c1"
  license "Ethical License"
  head "https://github.com/aryakaul/tinyjam.git", branch: "main"
  depends_on "python@3.11"
  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Jam to tiny desks", shell_output("#{bin}/tinyjam --help")
  end
end
