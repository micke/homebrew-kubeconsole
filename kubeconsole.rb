class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  url "https://github.com/micke/kubeconsole/releases/download/v1.0.0/mac.tar.gz"
  sha256 "d98345f1401fc3a77ff2d9b1bd8eff66b37642f85010e07c5e4fc934f2188cce"

  bottle :unneeded

  def install
    bin.install "kubeconsole"

    # Install bash completion
    output = Utils.safe_popen_read("./kubeconsole", "completion", "bash")
    (bash_completion/"kubeconsole").write output

    # Install zsh completion
    output = Utils.safe_popen_read("./kubeconsole", "completion", "zsh")
    (zsh_completion/"_kubeconsole").write output
  end

  test do
    system "#{bin}/kubeconsole", "--version"
  end
end
