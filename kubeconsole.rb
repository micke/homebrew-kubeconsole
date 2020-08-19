class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  url "https://github.com/micke/kubeconsole/releases/download/v1.0.0/mac.tar.gz"
  sha256 "ccb3c3cb79ec74394e7ca12d717aef17deb6a1010bd658c5ca0ba2fbbbcfd9b4"

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
