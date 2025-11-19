class Tinyjam < Formula
  include Language::Python::Virtualenv
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://files.pythonhosted.org/packages/8a/ed/3d1bf8623d9dcfb6c46400099db2ef8a1598acc5b06b7ac8f14490e358fd/tinyjam-1.1.0.tar.gz"
  version "1.1.0"
  sha256 "9d9bc6620d03ce37d111368ff570f9a7f99b01d1a0e8e69485d6ae653c38587d"
  license "Ethical License"
  head "https://github.com/aryakaul/tinyjam.git", branch: "main"
  depends_on "python@3.11"
  depends_on "mpv"
  depends_on "yt-dlp"
  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Jam to tiny desks", shell_output("#{bin}/tinyjam --help")
  end
end
