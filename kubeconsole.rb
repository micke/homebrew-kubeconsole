class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  url "https://github.com/micke/kubeconsole/releases/download/v1.0.0/mac.tar.gz"
  sha256 "38fda706b42ec98921d82a2c7ca3a00d2617f437209b1f1e40eed82e50cd0e58"

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
