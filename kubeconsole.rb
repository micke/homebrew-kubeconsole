class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  url "https://github.com/micke/kubeconsole/releases/download/v1.0.0/mac.tar.gz"
  sha256 "0c4bbd64ccfe74ba3c4d354d2c082138e36298f6c0c1fa474ff260af22bc58e4"

  bottle :unneeded

  def install
    bin.install "kubeconsole"
  end

  test do
    system "#{bin}/kubeconsole", "--version"
  end
end
