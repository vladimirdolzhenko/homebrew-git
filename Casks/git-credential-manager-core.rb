cask 'git-credential-manager-core' do
  name 'Git Credential Manager'
  homepage 'https://aka.ms/gcm'

  version "2.0.785"
  sha256 '064f8422122d84577b1dcd7845c942ad78aa899190fa5b5811a96528d1e89896'

  url "https://github.com/GitCredentialManager/git-credential-manager/releases/download/v#{version.major_minor_patch}/gcm-osx-x64-#{version.major_minor_patch}.pkg"

  pkg "gcm-osx-x64-#{version}.pkg", allow_untrusted: true

  uninstall script: {
                      executable: '/usr/local/share/gcm-core/uninstall.sh',
                      sudo:       true,
                    },
            pkgutil: 'com.microsoft.GitCredentialManager'
end
