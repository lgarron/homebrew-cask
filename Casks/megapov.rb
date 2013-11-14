class Megapov < Cask
  url 'http://megapov.inetart.net/packages/apple/megapov_c_ub_r3.dmg.zip'
  homepage 'http://megapov.inetart.net/'
  version '1.2.1'
  sha1 'acc99665e3e83aee60a67c5f44b821bfeb5f35ef'
  nested_container 'megapov_c_ub_r3.dmg'
  link 'MegaPOV_C_UB/MegaPOV.app'

  puts 'Before running MegaPOV, you might want to install POV-Ray and tell MegPOV about the standard includes."'
  puts 'One way to do this is as follows:"'
  puts ''
  puts '  brew install povray'
  puts '  defaults write org.megapov.macmegapov includePaths -array-add "/usr/local/share/povray-3.7/include"'
  puts ''

  # Remove locked files using sudo.
  uninstall :files => [
    "/opt/homebrew-cask/Caskroom/megapov/1.2.1/MegaPOV_C_UB/distribution-license.txt",
    "/opt/homebrew-cask/Caskroom/megapov/1.2.1/MegaPOV_C_UB/povlegal.doc",
  ]
end
