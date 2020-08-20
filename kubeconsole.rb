class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  url "https://github.com/micke/kubeconsole/releases/download/v1.0.1/mac.tar.gz"
  sha256 "52233738325e11b27346f1c21674a6b5ea99a36ccc02278df589d66c060ceec7"

  bottle :unneeded

  def install
    bin.install "kubeconsole"

    bash_completion.install "completion/bash" => "kubeconsole"
    zsh_completion.install "completion/zsh" => "_kubeconsole"
  end

  test do
    system "#{bin}/kubeconsole", "--version"
  end
end
