class Tinyjam < Formula
  include Language::Python::Virtualenv
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
  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  done
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  done

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Jam to tiny desks", shell_output("#{bin}/tinyjam --help")
  end
end
