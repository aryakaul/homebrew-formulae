class Tinyjam < Formula
  include Language::Python::Virtualenv
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://files.pythonhosted.org/packages/77/98/99729a5b1d71282f3238de879a622803398e0d9bc891b549e0964cdb8060/tinyjam-1.2.0.tar.gz"
  version "1.2.0"
  sha256 "53e8d7ccdd48f6088efe08c4ce4c0550e57dc4f1daf6b50841f8297b6fbeeb6c"
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
