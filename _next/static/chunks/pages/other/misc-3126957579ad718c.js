(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[461],{9704:function(e,s,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/other/misc",function(){return n(1449)}])},1449:function(e,s,n){"use strict";n.r(s),n.d(s,{__toc:function(){return l},default:function(){return c}});var i=n(5893),o=n(2673),r=n(2643),t={src:"/react-native-video//_next/static/media/AppTransportSecuritySetting.b5c387e7.png",height:90,width:964,blurDataURL:"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAABCAAAAADGa7CfAAAAEklEQVR42mP4+ubDjy/ffv0FACJAB6vdOiHaAAAAAElFTkSuQmCC",blurWidth:8,blurHeight:1};let l=[{depth:2,value:"iOS App Transport Security",id:"ios-app-transport-security"},{depth:2,value:"Audio Mixing",id:"audio-mixing"},{depth:2,value:"Android Expansion File Usage",id:"android-expansion-file-usage"},{depth:2,value:"Load files with the RN Asset System",id:"load-files-with-the-rn-asset-system"},{depth:2,value:"Play in background on iOS",id:"play-in-background-on-ios"}];function a(e){let s=Object.assign({h1:"h1",h2:"h2",ul:"ul",li:"li",p:"p",img:"img",a:"a",strong:"strong",pre:"pre",code:"code",span:"span"},(0,r.a)(),e.components);return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.h1,{children:"Miscellaneous"}),"\n",(0,i.jsx)(s.h2,{id:"ios-app-transport-security",children:"iOS App Transport Security"}),"\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"By default, iOS will only load encrypted (https) urls. If you want to load content from an unencrypted (http) source, you will need to modify your Info.plist file and add the following entry:"}),"\n"]}),"\n",(0,i.jsx)(s.p,{children:(0,i.jsx)(s.img,{alt:"App Transport Security",placeholder:"blur",src:t})}),"\n",(0,i.jsxs)(s.p,{children:["For more detailed info check this ",(0,i.jsx)(s.a,{href:"https://cocoacasts.com/how-to-add-app-transport-security-exception-domains",children:"article"})]}),"\n\n",(0,i.jsx)(s.h2,{id:"audio-mixing",children:"Audio Mixing"}),"\n",(0,i.jsx)(s.p,{children:"At some point in the future, react-native-video will include an Audio Manager for configuring how videos mix with other apps playing sounds on the device."}),"\n",(0,i.jsx)(s.p,{children:"On iOS, if you would like to allow other apps to play music over your video component, make the following change:"}),"\n",(0,i.jsx)(s.p,{children:(0,i.jsx)(s.strong,{children:"AppDelegate.m"})}),"\n",(0,i.jsx)(s.pre,{"data-language":"objective-c","data-theme":"default",children:(0,i.jsxs)(s.code,{"data-language":"objective-c","data-theme":"default",children:[(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"#import"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string-expression)"},children:"<AVFoundation/AVFoundation.h>"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"  "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:"// import"})]}),"\n",(0,i.jsx)(s.span,{className:"line",children:" "}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"-"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" ("}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"BOOL"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:")application:(UIApplication "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"*"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:")application didFinishLaunchingWithOptions:("}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"NSDictionary"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"*"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:")launchOptions"})]}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"{"})}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"  ..."})}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"  [[AVAudioSession "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"sharedInstance"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"] "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"setCategory"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-punctuation)"},children:":"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"AVAudioSessionCategoryAmbient error"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-punctuation)"},children:":"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"nil"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"];  "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:"// allow"})]}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"  ..."})}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"}"})})]})}),"\n",(0,i.jsxs)(s.p,{children:["You can also use the ",(0,i.jsx)(s.a,{href:"#ignoresilentswitch",children:"ignoreSilentSwitch"})," prop."]}),"\n\n",(0,i.jsx)(s.h2,{id:"android-expansion-file-usage",children:"Android Expansion File Usage"}),"\n",(0,i.jsx)(s.p,{children:"Expansions files allow you to ship assets that exceed the 100MB apk size limit and don't need to be updated each time you push an app update."}),"\n",(0,i.jsx)(s.p,{children:"This only supports mp4 files and they must not be compressed. Example command line for preventing compression:"}),"\n",(0,i.jsx)(s.pre,{"data-language":"bash","data-theme":"default",children:(0,i.jsx)(s.code,{"data-language":"bash","data-theme":"default",children:(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"zip"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string)"},children:"-r"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string)"},children:"-n"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string)"},children:".mp4"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string)"},children:"*.mp4"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string)"},children:"player.video.example.com"})]})})}),"\n",(0,i.jsx)(s.pre,{"data-language":"javascript","data-theme":"default",children:(0,i.jsxs)(s.code,{"data-language":"javascript","data-theme":"default",children:[(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:"// Within your render function, assuming you have a file called"})}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:'// "background.mp4" in your expansion file. Just add your main and (if applicable) patch version'})}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"<"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"Video"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"source"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"="}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"{{uri"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:":"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string-expression)"},children:'"background"'}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-punctuation)"},children:","}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" mainVer"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:":"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"1"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-punctuation)"},children:","}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" patchVer"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:":"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:" "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"0"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"}} "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:"// Looks for .mp4 file (background.mp4) in the given expansion version."})]}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"       "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"resizeMode"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"="}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string-expression)"},children:'"cover"'}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"           "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-comment)"},children:"// Fill the whole screen at aspect ratio."})]}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"       "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"style"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"="}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"{"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"styles"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:".backgroundVideo} />"})]})]})}),"\n",(0,i.jsx)(s.h2,{id:"load-files-with-the-rn-asset-system",children:"Load files with the RN Asset System"}),"\n",(0,i.jsxs)(s.p,{children:["The asset system ",(0,i.jsxs)(s.a,{href:"http://www.reactnative.com/react-native-v0-14-0-released/",children:["introduced in RN ",(0,i.jsx)(s.code,{children:"0.14"})]})," allows loading image resources shared across iOS and Android without touching native code. As of RN ",(0,i.jsx)(s.code,{children:"0.31"})," ",(0,i.jsx)(s.a,{href:"https://github.com/facebook/react-native/commit/91ff6868a554c4930fd5fda6ba8044dbd56c8374",children:"the same is true"})," of mp4 video assets for Android. As of ",(0,i.jsxs)(s.a,{href:"https://github.com/facebook/react-native/releases/tag/v0.33.0",children:["RN ",(0,i.jsx)(s.code,{children:"0.33"})]})," iOS is also supported. Requires ",(0,i.jsx)(s.code,{children:"react-native-video@0.9.0"}),"."]}),"\n",(0,i.jsx)(s.pre,{"data-language":"javascript","data-theme":"default",children:(0,i.jsxs)(s.code,{"data-language":"javascript","data-theme":"default",children:[(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"<"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-constant)"},children:"Video"})]}),"\n",(0,i.jsxs)(s.span,{className:"line",children:[(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"  "}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"source"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-keyword)"},children:"="}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"{"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-function)"},children:"require"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"("}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-token-string-expression)"},children:"'../assets/video/turntable.mp4'"}),(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:")}"})]}),"\n",(0,i.jsx)(s.span,{className:"line",children:(0,i.jsx)(s.span,{style:{color:"var(--shiki-color-text)"},children:"/>"})})]})}),"\n",(0,i.jsx)(s.h2,{id:"play-in-background-on-ios",children:"Play in background on iOS"}),"\n",(0,i.jsxs)(s.p,{children:["To enable audio to play in background on iOS the audio session needs to be set to ",(0,i.jsx)(s.code,{children:"AVAudioSessionCategoryPlayback"}),". See [Apple documentation][3] for additional details. (NOTE: there is now a ticket to ",(0,i.jsx)(s.a,{href:"https://github.com/react-native-community/react-native-video/issues/310",children:"expose this as a prop"})," )"]})]})}var c=(0,o.j)({MDXContent:function(){let e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},{wrapper:s}=Object.assign({},(0,r.a)(),e.components);return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(a,{...e})}):a(e)},pageOpts:{filePath:"pages/other/misc.md",route:"/other/misc",timestamp:1737583186e3,title:"Miscellaneous",headings:l},pageNextRoute:"/other/misc"})}},function(e){e.O(0,[673,888,774,179],function(){return e(e.s=9704)}),_N_E=e.O()}]);