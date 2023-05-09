# Magma is Brocken :(
I have plans to fix it, but I don't know when I'll have time.

### Quick PSA: 
# [Fixed!] ~~Don't use any of the DLLs that come with Magma~~
It was discovered that some of the stock DLLs were viruses, and that the only 100% safe one is the GMod Lmaobox DLL (`GLuaLoader.dll`) seen in the YouTube showcase. I have finally removed the viruses, but still be careful when looking for / downloading your own. If you still feel unsafe about the executable itself, feel free to compile it yourself since that's part of the reason I made it open sourced.

[Pretty Good TF2 Cheat (Virus Checked) (Detected)](https://www.unknowncheats.me/forum/team-fortress-2-a/436430-seowned-featured-cheat.html)
<br/><br/>
<br/><br/>
<br/><br/>
[![Downloads](https://img.shields.io/github/downloads/Not316tb/Magma-IaE/total?color=brightgreen)]()
![Status](https://img.shields.io/badge/status-broken-critical)
![Release](https://img.shields.io/github/v/release/Not316tb/Magma-IaE)
![Language](https://img.shields.io/badge/language-C%23-blue)
![Framework](https://img.shields.io/badge/framework-WPF%20.NET-blue)

# Magma Injector & Executor

Hello random person! I want to share with you my latest and possibly greatest creation, Magma Injector & Executor (Magma IaE for short). Magma is a Level 7+ Roblox Lua Executor as well as an Internal DLL Injector build entirely in Microsoft's WPF .NET Framework. I made magma because i got sick of seeing all of the other absolute garbage ones out there that either give you a virus or require you to visit like 3 / 4 different ad sites to use them.

Why should cheaters have to pay to get a decent cheat? Magma is completely free to use (and open sourced)! If you see something broken or something that you feel should be improved feel free to open up my code and give it some tinkering, that's the whole point after all!

### Installation

Downloading and Installing Magma onto your computer is quite simple, simply follow the steps listed bellow.
  
  &nbsp;&nbsp;1.) Goto the [Magma Releases Page](https://github.com/Not316tb/Magma-IaE/releases) And download the latest version (currently v2.0.9)    
  &nbsp;&nbsp;3.) Extract the ZIP Archive onto your Desktop  
  &nbsp;&nbsp;2.) **Configure Your Anti-Virus** to ignore the `Magma IaE v2.0.9` folder. *    
  &nbsp;&nbsp;4.) Run the `Magma_IaE.exe` as Administrator  

#### To use the Roblox Lua Executor:
  
  &nbsp;&nbsp;1.) Choose an API in the Settings Tab (I recommend using Anemo since it works the best)  
  &nbsp;&nbsp;2.) Open the Lua Tab  
  &nbsp;&nbsp;3.) Click the `Link Icon` (Top Middle) to attach the selected API to Roblox  
  &nbsp;&nbsp;4.) Paste your script into the TextBox (or select one from the menu)  
  &nbsp;&nbsp;5.) Click the `Firework Icon` (Top-Left) to run the script!  

#### To use the Internal DLL Injector:
  &nbsp;&nbsp;1.) Open the Injector Tab  
  &nbsp;&nbsp;2.) Click the `Add` Button and select a DLL file  
  &nbsp;&nbsp;3.) Open the dropdown menu under "Process"  
  &nbsp;&nbsp;4.) Select your desired application (you can search for the first letter if needed)  
  &nbsp;&nbsp;5.) Click the `Inject` Button (Syringe Icon)  
  
![screenshot1](https://user-images.githubusercontent.com/47403033/114762908-3b12a200-9d30-11eb-8c8d-b523235b50ae.png)

## FAQ  

#### Where can I find more DLLs?

> The most reputable source to look for more DLLs is [UnknownCheats](https://www.unknowncheats.me/forum/search.php?searchid=18371288)

#### Where can I find more Scripts?

> The most reputable source to look for more Scripts is [V3rMillion](https://v3rmillion.net/)

#### Magma wont open when I run it!

 > You most likely left your antivirus enabled, or forgot to configure it to ignore Magma. If you don't have a third-party antivirus installed, read the section below on how to disable Windows Virus and Threat Protection. 

#### Why does Magma need Administrator Permissions?
 > Since magma has an on-board internal DLL injector, it needs to reference System files in order to work (`kernel32.dll` respectively). Without requiring admin permissions the DLL injector would simply break

#### Why does Magma flag as a virus?

> Due to the nature of Roblox exploits and the way they work (game manipulation, raw code injection, etc.) you need to disable Windows Security if on Windows 10 Home or Pro, and Windows Defender if on Windows 10 Enterprise and above, and if you have another antivirus software installed configure it to allow all files within the Magma directory ( Default: `C:\Program Files (x86)\Magma\` ). Magma is not a virus, and will not work with an unconfigured antivirus enabled, since it will automatically remove important files required for the application to launch. You can learn how to turn off Windows Defender [here](https://www.youtube.com/watch?v=TJb9CuVAHMI). Magma uses a process called code injection to attach itself to a game. This process is also being used by some malicious software, which is why your antivirus tool may detects this download as malicious.

Magma is 100% safe to use, as long as you got it from here!

## Please Note
I had no part in making any of the injection APIs or Lua Scripts included in this application, and each one belongs to it's rightful owners.

### Disclaimer
#### USE AT YOUR OWN RISK
I am in no way responsible if you recieve any kind of in-game punishment for using this software, and as such by downloading Magma you agree to take full responsibility!

Happy Cheating!
