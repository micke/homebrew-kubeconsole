# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubeconsole < Formula
  desc "Utility to create temporary REPL pods from deployments"
  homepage "https://github.com/micke/kubeconsole"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/micke/kubeconsole/releases/download/v1.2.0/kubeconsole_1.2.0_darwin_amd64.tar.gz"
      sha256 "3a6f122975445c65ec02296f6ac5b6d6f503c1a0a163ea951f377c0e73522817"

      def install
        bin.install "kubeconsole"

        bash_completion.install "completions/kubeconsole.bash" => "kubeconsole"
        zsh_completion.install "completions/kubeconsole.zsh" => "_kubeconsole"
        fish_completion.install "completions/kubeconsole.fish" => "_kubeconsole"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/micke/kubeconsole/releases/download/v1.2.0/kubeconsole_1.2.0_darwin_arm64.tar.gz"
      sha256 "cf3a35bf0c1186bf15d9f4988a853f3b46fa4f40d65cf0a1b1ae804005bf4741"

      def install
        bin.install "kubeconsole"

        bash_completion.install "completions/kubeconsole.bash" => "kubeconsole"
        zsh_completion.install "completions/kubeconsole.zsh" => "_kubeconsole"
        fish_completion.install "completions/kubeconsole.fish" => "_kubeconsole"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/micke/kubeconsole/releases/download/v1.2.0/kubeconsole_1.2.0_linux_amd64.tar.gz"
      sha256 "8a4c537e839cb29acd448e3c903c7cb267079a8c22cafcf358b0c008c0f95780"

      def install
        bin.install "kubeconsole"

        bash_completion.install "completions/kubeconsole.bash" => "kubeconsole"
        zsh_completion.install "completions/kubeconsole.zsh" => "_kubeconsole"
        fish_completion.install "completions/kubeconsole.fish" => "_kubeconsole"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/micke/kubeconsole/releases/download/v1.2.0/kubeconsole_1.2.0_linux_arm64.tar.gz"
      sha256 "220b8b8c8aa3b9f8e646bfbbded7eeeb14221c3faf3a35b50b4da4def82ab3a3"

      def install
        bin.install "kubeconsole"

        bash_completion.install "completions/kubeconsole.bash" => "kubeconsole"
        zsh_completion.install "completions/kubeconsole.zsh" => "_kubeconsole"
        fish_completion.install "completions/kubeconsole.fish" => "_kubeconsole"
      end
    end
  end

  test do
    system "#{bin}/kubeconsole", "--help"
  end
end
