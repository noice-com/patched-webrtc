Pod::Spec.new do |s|
  s.name             = 'NoiceWebRTC'
  s.version          = '111.0.0'
  s.summary          = 'Patched WebRTC build provided by Noice to be used in Noice projects.'
  s.description      = 'This contains a patched WebRTC build to be used in conjunction with react-native-webrtc.'
  s.homepage         = 'https://github.com/noice-com/patched-webrtc'
  s.license          = { :type => 'BSD', :text => <<-LICENSE
  Copyright (c) 2011, The WebRTC project authors. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:
  
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
  
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the
      distribution.
  
    * Neither the name of Google nor the names of its contributors may
      be used to endorse or promote products derived from this software
      without specific prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  
  LICENSE
  }
  s.authors          = 'The WebRTC project authors'
  s.source           = { :http => 'https://github.com/noice-com/patched-webrtc/releases/download/v111.0.0/WebRTC.xcframework.zip', :flatten => false }
  s.platform         = :ios, '12.0'
  s.vendored_frameworks = 'WebRTC.xcframework'
end
