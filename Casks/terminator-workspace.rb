# Generated from packaging/homebrew/terminator-workspace.rb.in in
# https://github.com/aiman2039/terminator by the release workflow (or
# `cargo xtask package-manifests`). Edit the template, not this file.
cask "terminator-workspace" do
  version "0.190.0"
  sha256 "45ccab5db2609328ead15dde423409fc3d2d101e60ee3e84c82a77e6a7dbe98a"

  url "https://github.com/aiman2039/terminator/releases/download/v0.190.0/terminator-v0.190.0-macos.dmg"
  name "Terminator"
  desc "Native terminal workspace with persistent sessions and agent hooks"
  homepage "https://github.com/aiman2039/terminator"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  # Sparkle updates the app itself; Homebrew does not upgrade it.
  auto_updates true

  app "Terminator.app"
  binary "#{appdir}/Terminator.app/Contents/MacOS/terminator-hook"

  # No zap stanza: sessions, scrollback and settings stay unless the user
  # removes them on purpose.
end
