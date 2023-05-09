/* Original Name: ScriptHub
 * Current Name: Magma IaE
 * Creator: Not316tb
 * 
 * Version: 2.0.9 [Official Release]
 * 
 * =====================================================================
 * 
 * A note from the developer: 
 * 
 * Odly enough, this project is my first ever to be finalized
 * and made availilble to the public. What initially started
 * as an experiment more than anything swiftly grew to much
 * much more.
 * 
 * Magma IaE is, and always will be free and open-sourced
 * meaning that anyone can edit this code and make their
 * own version of this program. This being said, I am
 * aware that there will unfortunately be people who try 
 * and profit off of this code, and if you are someone who
 * has suffered from the wrath of one of these scum bags,
 * I am truly sorry.
 * 
 * While I wish you didn't, I do permit the profitable 
 * redistribution of MODIFIED VERSIONS of Magma, as long as
 * attributions and/or credit is given to "Not316tb", for
 * the creation of Magma IaE.
 * 
 * However, please note that unauthorized redistribution of the 
 * official version of Magma IaE is STRICTLY PROHIBITED.
 * 
 * With that said, have fun making tweaks to my code, I am
 * excited to see what you do with it. Feel free to join my
 * discord server and share your creations with me!
 * 
 * https://discord.gg/H3qPn377Qv
 * 
 * - Not316tb 
 * 
 * =====================================================================
 * 
 * Special Thanks to 
 *   
 *   [+] Legrandite#1362
 *   [+] Kaizer_#6969
 *   [+] redone#9149
 *   [+] Reubzandwich#9862
*/



using System;
using System.IO;
using ClubDarkAPI;
using System.Text;
using System.Linq;
using EasyExploits;
using WeAreDevs_API;
using CheatSquadAPI;
using AnemoAPI;
using System.Timers;
using System.Windows;
using Microsoft.Win32;
using System.IO.Pipes;
using System.Threading;
using System.Diagnostics;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Input;
using System.Windows.Shapes;
using System.Windows.Interop;
using ICSharpCode.AvalonEdit;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Collections.Generic;
using System.Windows.Media.Imaging;
using System.Runtime.InteropServices;
using System.Net;
using System.Runtime.Remoting;

namespace ScriptHub_v3._4._1b
{

    internal enum AccentState
    {
        ACCENT_DISABLED = 0,
        ACCENT_ENABLE_GRADIENT = 1,
        ACCENT_ENABLE_TRANSPARENTGRADIENT = 2,
        ACCENT_ENABLE_BLURBEHIND = 3,
        ACCENT_ENABLE_ACRYLICBLURBEHIND = 4,
        ACCENT_INVALID_STATE = 5
    }

    [StructLayout(LayoutKind.Sequential)]
    internal struct AccentPolicy
    {
        public AccentState AccentState;
        public uint AccentFlags;
        public uint GradientColor;
        public uint AnimationId;
    }

    [StructLayout(LayoutKind.Sequential)]
    internal struct WindowCompositionAttributeData
    {
        public WindowCompositionAttribute Attribute;
        public IntPtr Data;
        public int SizeOfData;
    }

    internal enum WindowCompositionAttribute
    {
        // ...
        WCA_ACCENT_POLICY = 19
        // ...
    }

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window
    {

        [DllImport("user32.dll")]
        internal static extern int SetWindowCompositionAttribute(IntPtr hwnd, ref WindowCompositionAttributeData data);

        /* Create Exploit API Instances */

        EasyExploits.Module EZXP = new EasyExploits.Module();
        WeAreDevs_API.ExploitAPI WRD = new WeAreDevs_API.ExploitAPI();
        ClubDarkAPI.ExploitAPI CDRK = new ClubDarkAPI.ExploitAPI();
        CheatSquadAPI.Module CSQ = new CheatSquadAPI.Module();
        AnemoAPI.Anemo ANMO = new AnemoAPI.Anemo();

        /* Define Global Variables */

        private uint _blurOpacity;

        public double BlurOpacity
        {
            get { return _blurOpacity; }
            set { _blurOpacity = (uint)value; EnableBlur(); }
        }

        string[] config;
        List<string> dlls = new List<string>();
        List<int> procs = new List<int>();

        private uint _blurBackgroundColor = 0x990000; /* BGR color format */

        bool apiInjected = false;
        bool setTopClicked = false;

        int MenuIndex = 0;

        Window window;

        /* Code Here Gets Ran First */

        public MainWindow()
        {
            DataContext = this;
            try
            {
                InitializeComponent();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.ToString());
            }

        }

        /* When A New Script is Selected From The Scripts Listbox Object Load It Into Editor */

        private void ScriptsListBox_SelectedIndexChanged(object sender, SelectionChangedEventArgs e)
        {

            try
            {
                string itemName = ScriptsListBox.Items[ScriptsListBox.SelectedIndex].ToString().Replace("System.Windows.Controls.ListBoxItem: ", "");
                ScriptTextBox.Text = File.ReadAllText($"{System.IO.Path.GetFullPath(ScriptsDirectory.Text)}/{itemName}");
            } catch
            {
                
            }
        }

        /* Initialization Function [Called After MainWindow()] */

        private static string GetUrl(string url)
        {
            ServicePointManager.Expect100Continue = true;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            HttpWebRequest request = (HttpWebRequest)WebRequest.CreateDefault(new Uri(url));
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                if (response.StatusCode != HttpStatusCode.OK)
                    throw new ServerException("Server returned an error code (" + ((int)response.StatusCode).ToString() +
                        ") while trying to retrieve a new key: " + response.StatusDescription);

                using (var sr = new StreamReader(response.GetResponseStream()))
                {
                    return sr.ReadToEnd();
                }
            }
        }

        private void Window_Initialized(object sender, EventArgs e)
        {

            if (GetUrl("https://raw.githubusercontent.com/Not316tb/Magma/main/version.txt") != "2.0.9\n")
            {
                System.Windows.Forms.DialogResult UpdaterQuery = System.Windows.Forms.MessageBox.Show("A new version of Magma is available! Download it now?", "Auto-Updater", System.Windows.Forms.MessageBoxButtons.YesNo, System.Windows.Forms.MessageBoxIcon.Information);

                if (UpdaterQuery == System.Windows.Forms.DialogResult.Yes)
                {
                    System.Diagnostics.Process.Start("http://github.com/Not316tb/Magma/releases");
                    System.Windows.Application.Current.Shutdown();
                }
            }  

            /* Set Window Name */

            this.Title = "Magma IaE";

            ScriptTextBox.Text = "--[[                                        /\\\n	                                       /__\\\n	Hi! My name's Not316tb. Welcome         ||\n	to the Magma Injector & Executor!       ||\n	                                        ||\n    Use the firework button to              ||\n    Execute your scripts                    ||\n                                            ||\nChange Log:                                 ||\n                                            ||\n  [*] Fixed Some Bugs               ________||_______\n  [*] Added Syntax Highlighting    |                 |\n  [*] Added This \"Guide\"	       |    Click the    |\n	                               |  Attach Button  |\n	                               | To Get Started! |\n	                               |_________________|\n]]--";

            ScriptTextBox.SyntaxHighlighting =  Magma_IaE.ResourceLoader.LoadHighlightingDefinition("Lua.xshd");

            /* Create Config File If Corrupted / Doesn't Exist */

            if (!File.Exists(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt")))
            {
                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), "classic\nanmo\nfalse\nfalse\n./Scripts\nfalse");
            }

            if (File.ReadLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt")).Count() <= 5)
            {
                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), "classic\nezxp\nfalse\nfalse\n./Scripts\nfalse");
            }

            /* Import And Read Config File */

            config = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            if (config[1] == "ezxp")
            {
                ApiType.SelectedIndex = 2;
            }
            else if (config[1] == "anmo")
            {
                ApiType.SelectedIndex = 1;
            }
            else if (config[1] == "cdrk")
            {
                ApiType.SelectedIndex = 6;
            }
            else if (config[1] == "wrd")
            {
                ApiType.SelectedIndex = 3;
            }
            else if (config[1] == "csq")
            {
                ApiType.SelectedIndex = 4;
            }

            if (config[2] == "false")
            {
                AcrylicEffect.IsChecked = false;
            }
            else if (config[2] == "true")
            {
                AcrylicEffect.IsChecked = true;
            }

            if (config[3] == "false")
            {
                AdvUnfocus.IsChecked = false;
            }
            else if (config[3] == "true")
            {
                AdvUnfocus.IsChecked = true;
            }

            if (config[5] == "false")
            {
                AttachFromHome.IsChecked = false;
            }
            else if (config[5] == "true")
            {
                AttachFromHome.IsChecked = true;
            }

            /* Check To Make Sure Scripts Directory Exists */

            if (Directory.Exists(System.IO.Path.GetFullPath(config[4])))
            {

                string paththing = "";

                if (System.IO.Path.GetFileName(System.IO.Path.GetFullPath(config[4])).Length >= 11)
                {
                    paththing = $"{(System.IO.Path.GetFileName(System.IO.Path.GetFullPath(config[4]))).Substring(0, 10)}...";
                }
                else
                {
                    paththing = $"{System.IO.Path.GetFileName(System.IO.Path.GetFullPath(config[4]))}";
                }

                ScriptsDirLabel.Content = $"{paththing}";

                ScriptsDirectory.Text = config[4];
                ScriptsDirLabel.Content = paththing;

                LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.txt");
                LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.lua");
            }

            window = (Window)sender;

            /* Create Timer to Check For Roblox Client */

            System.Timers.Timer aTimer = new System.Timers.Timer();
            aTimer.Elapsed += new ElapsedEventHandler(CheckRobloxOpen);
            aTimer.Interval = 2500;
            aTimer.Enabled = true;

            /* Define ToolTips */

            dllButton.ToolTip = new ToolTip { Content = "DLL Injector" };
            ButtonClose.ToolTip = new ToolTip { Content = "Exit Magma IaE" };
            luaButton.ToolTip = new ToolTip { Content = "Roblox Lua Executor" };
            ButtonMinimize.ToolTip = new ToolTip { Content = "Minimize Window" };
            ButtonKeepTop.ToolTip = new ToolTip { Content = "Keep On Top (No)" };
            ButtonKillTask.ToolTip = new ToolTip { Content = "Kill Roblox" };
            ButtonClearText.ToolTip = new ToolTip { Content = "Clear Textbox" };
            ButtonSaveScript.ToolTip = new ToolTip { Content = "Save Script" };
            ButtonReAttach.ToolTip = new ToolTip { Content = "Attach API (Configure in Settings)" };
            ButtonLoadScript.ToolTip = new ToolTip { Content = "Load Script from File" };
            ButtonExecuteScript.ToolTip = new ToolTip { Content = "Execute Script (Lua)" };
            AcrylicEffect.ToolTip = new ToolTip { Content = "Blurs Application Background ( Laggy )" };
            AdvUnfocus.ToolTip = new ToolTip { Content = "Enable / Disable Transparency When Leaving The Window" };
            AttachFromHome.ToolTip = new ToolTip { Content = "Attach API When Clicking 'Lua' Button On Home Screen" };
            addDll.ToolTip = new ToolTip { Content = "Add A DLL File To Inject" };
            clrDlls.ToolTip = new ToolTip { Content = "Clear Current DLLs List" };
            refProcList.ToolTip = new ToolTip { Content = "Refresh Processes List" };
            rmvDll.ToolTip = new ToolTip { Content = "Remove Currently Selected DLL from the list" };
            about.ToolTip = new ToolTip { Content = "View GitHub Documentation" };
            configInjector.ToolTip = new ToolTip { Content = "Configure Injector Settings" };
            injectButton.ToolTip = new ToolTip { Content = "Inject DLL" };
            discUrl.ToolTip = new ToolTip { Content = "Join The Studio7 Discord" };
            webSite.ToolTip = new ToolTip { Content = "Visit My Website" };
            gitHub.ToolTip = new ToolTip { Content = "Visit My GitHub" };

            /* Set Current View To Home Screen */

            MoveMenuCursor(0);

        }

        /* Code Here Gets Ran Last */

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (config[2] == "true")
            {
                EnableBlur(); // If EnableBlur Config Is Set To True Enable
            }
        }

        /* Close Application When ButtonClose Clicked */

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        /* Minimize Application When ButtonMinimize Clicked */

        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        /* Toggle "Always On Top" Mode When ButtonKepTop Clicked */

        private void ButtonKeepTop_Click(object sender, RoutedEventArgs e)
        {
            if (setTopClicked == false)
            {
                window.Topmost = true;
                ButtonKeepTop.ToolTip = new ToolTip { Content = "Keep On Top (Yes)" };
                ButtonKeepTop.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#DDFFFFFF");
                setTopClicked = true;
            }
            else if (setTopClicked == true)
            {
                window.Topmost = false;
                ButtonKeepTop.ToolTip = new ToolTip { Content = "Keep On Top (No)" };
                ButtonKeepTop.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#7FFFFFFF");
                setTopClicked = false;
            }

        }

        /* Check To Make Sure Current View Isn't Executor */

        private bool IsRobloxTabActive()
        {
            if (ListViewMenu.SelectedIndex != 2)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        /* Function To Check For Roblox Client OR Api Pipe */

        private void CheckRobloxOpen(object sender, ElapsedEventArgs e)
        {
            bool tabStatus = true;

            this.Dispatcher.Invoke(() => {
                if (IsRobloxTabActive() == false)
                {
                    tabStatus = false;
                }
            });

            if (tabStatus)
            {
                if (config[1] == "wrd")
                {

                    if (WRD.isAPIAttached())
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                            Status.Text = "Injected";
                            apiInjected = true;
                            ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        });
                    }
                    else
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                            Status.Text = "Idle";
                            apiInjected = false;
                        });
                    }

                }
                else if (config[1] == "ezxp")
                {
                    if (DllPipes.NamedPipeExist("ocybedam"))
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                            Status.Text = "Injected";
                            apiInjected = true;
                            ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        });
                    }
                    else
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                            Status.Text = "Idle";
                            apiInjected = false;
                        });
                    }
                }
                else if (config[1] == "cdrk")
                {
                    if (DllPipes.NamedPipeExist("zxc"))
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                            Status.Text = "Injected";
                            apiInjected = true;
                            ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        });
                    }
                    else
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                            Status.Text = "Idle";
                            apiInjected = false;
                        });
                    }
                }
                else if (config[1] == "csq")
                {
                    if (DllPipes.NamedPipeExist("taStqdau1Ch1ee33"))
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                            Status.Text = "Injected";
                            apiInjected = true;
                            ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        });
                    }
                    else
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                            Status.Text = "Idle";
                            apiInjected = false;
                        });
                    }
                }
                else if (config[1] == "anmo")
                {
                    if (DllPipes.NamedPipeExist("AnemoPIPE"))
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                            Status.Text = "Injected";
                            apiInjected = true;
                            ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        });
                    }
                    else
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                            Status.Text = "Idle";
                            apiInjected = false;
                        });
                    }
                }
            }
        }

        /* Kill Roblox Process When ButtonKillTask Clicked */

        private void ButtonKillTask_Click(object sender, RoutedEventArgs e)
        {
            var RobloxBetaGameClientProcesses = Process.GetProcesses().
            Where(pr => pr.ProcessName == "RobloxPlayerBeta");

            foreach (var process in RobloxBetaGameClientProcesses)
            {
                process.Kill();
            }

            var RobloxGameClientProcesses = Process.GetProcesses().
            Where(pr => pr.ProcessName == "RobloxPlayer");

            foreach (var process in RobloxGameClientProcesses)
            {
                process.Kill();
            }
        }

        /* Allow Window To Be Dragged From Top Bar */

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        /* Enable Acrylic Effect Function ( Hacky ) */

        internal void EnableBlur()
        {
            var windowHelper = new WindowInteropHelper(this);

            var accent = new AccentPolicy();
            accent.AccentState = AccentState.ACCENT_ENABLE_ACRYLICBLURBEHIND;
            accent.GradientColor = (_blurOpacity << 24) | (_blurBackgroundColor & 0xFFFFFF);

            var accentStructSize = Marshal.SizeOf(accent);

            var accentPtr = Marshal.AllocHGlobal(accentStructSize);
            Marshal.StructureToPtr(accent, accentPtr, false);

            var data = new WindowCompositionAttributeData();
            data.Attribute = WindowCompositionAttribute.WCA_ACCENT_POLICY;
            data.SizeOfData = accentStructSize;
            data.Data = accentPtr;

            SetWindowCompositionAttribute(windowHelper.Handle, ref data);

            Marshal.FreeHGlobal(accentPtr);
        }

        /* Disable Acrylic Effect Function */

        internal void DisableBlur()
        {
            var windowHelper = new WindowInteropHelper(this);

            var accent = new AccentPolicy();
            accent.AccentState = AccentState.ACCENT_DISABLED;
            accent.GradientColor = (_blurOpacity << 24) | (_blurBackgroundColor & 0xFFFFFF);

            var accentStructSize = Marshal.SizeOf(accent);

            var accentPtr = Marshal.AllocHGlobal(accentStructSize);
            Marshal.StructureToPtr(accent, accentPtr, false);

            var data = new WindowCompositionAttributeData();
            data.Attribute = WindowCompositionAttribute.WCA_ACCENT_POLICY;
            data.SizeOfData = accentStructSize;
            data.Data = accentPtr;

            SetWindowCompositionAttribute(windowHelper.Handle, ref data);

            Marshal.FreeHGlobal(accentPtr);
        }


        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            MenuIndex = ListViewMenu.SelectedIndex;
            MoveMenuCursor(MenuIndex);
        }

        private void MoveMenuCursor(int index)
        {
            TransitioningContentIndicator.OnApplyTemplate();
            GridCursor.Margin = new Thickness(0, (195 + (60 * index)), 0, 0);

            if (index == 2)
            {
                GridCursor.Height = 52.5;
                GridCursor.VerticalAlignment = VerticalAlignment.Top;
            }
            else if (index == 3)
            {
                GridCursor.VerticalAlignment = VerticalAlignment.Bottom;
                GridCursor.Margin = new Thickness(0, 0, 0, 0);
                GridCursor.Height = 52;
            }
            else
            {
                GridCursor.Height = 60;
                GridCursor.VerticalAlignment = VerticalAlignment.Top;
            }
            if (index == 0)
            {
                //Change Mode

                Mode.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                Mode.Text = "N/A";

                //Hide Status

                Status.Visibility = Visibility.Hidden;
                StatusLabel.Visibility = Visibility.Hidden;

                // Lua Control Panel Visibility

                ButtonLoadScript.Visibility = Visibility.Hidden;
                ButtonSaveScript.Visibility = Visibility.Hidden;
                ButtonClearText.Visibility = Visibility.Hidden;
                ButtonExecuteScript.Visibility = Visibility.Hidden;
                ButtonReAttach.Visibility = Visibility.Hidden;
                ButtonKillTask.Visibility = Visibility.Hidden;

                // Pane Visibility

                LuaScreenGrid.Visibility = Visibility.Hidden;
                InjectorScreenGrid.Visibility = Visibility.Hidden;
                HomeScreenGrid.Visibility = Visibility.Visible;
                OptionsScreenGrid.Visibility = Visibility.Hidden;

                //Pane Heights

                HomeScreenGrid.Height = 400;
                LuaScreenGrid.Height = 0;
                InjectorScreenGrid.Height = 0;
                OptionsScreenGrid.Height = 0;
            }
            else if (index == 1)
            {
                //Change Mode & Status

                Mode.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFF0000");
                Mode.Text = "DLL Injector";

                Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                Status.Text = "Idle";

                //Show Status

                Status.Visibility = Visibility.Visible;
                StatusLabel.Visibility = Visibility.Visible;


                // Lua Control Panel Visibility

                ButtonLoadScript.Visibility = Visibility.Hidden;
                ButtonSaveScript.Visibility = Visibility.Hidden;
                ButtonClearText.Visibility = Visibility.Hidden;
                ButtonExecuteScript.Visibility = Visibility.Hidden;
                ButtonReAttach.Visibility = Visibility.Hidden;
                ButtonKillTask.Visibility = Visibility.Hidden;

                // Pane Visibility

                LuaScreenGrid.Visibility = Visibility.Hidden;
                InjectorScreenGrid.Visibility = Visibility.Visible;
                HomeScreenGrid.Visibility = Visibility.Hidden;
                OptionsScreenGrid.Visibility = Visibility.Hidden;

                //Pane Heights

                HomeScreenGrid.Height = 0;
                LuaScreenGrid.Height = 0;
                InjectorScreenGrid.Height = 400;
                OptionsScreenGrid.Height = 0;

                //Refresh Proccess List

                Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFFF000");
                Status.Text = "Loading...";

                procList.Items.Clear();
                procs.Clear();

                Process[] processCollection = Process.GetProcesses();
                foreach (Process Proc in processCollection)
                {
                    procList.Items.Add(Proc.ProcessName + $" ({Proc.Id})");

                    procs.Add(Proc.Id);
                }

                Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                Status.Text = "Idle";

            }
            else if (index == 2)
            {
                //Change Mode

                Mode.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFFF000");
                Mode.Text = "Lua Executor";

                //Show & Change Status

                Status.Visibility = Visibility.Visible;
                StatusLabel.Visibility = Visibility.Visible;

                if (apiInjected == true)
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                }

                // Lua Control Panel Visibility

                ButtonLoadScript.Visibility = Visibility.Visible;
                ButtonSaveScript.Visibility = Visibility.Visible;
                ButtonClearText.Visibility = Visibility.Visible;
                ButtonExecuteScript.Visibility = Visibility.Visible;
                ButtonReAttach.Visibility = Visibility.Visible;
                ButtonKillTask.Visibility = Visibility.Visible;

                // Pane Visibility

                LuaScreenGrid.Visibility = Visibility.Visible;
                InjectorScreenGrid.Visibility = Visibility.Hidden;
                HomeScreenGrid.Visibility = Visibility.Hidden;
                OptionsScreenGrid.Visibility = Visibility.Hidden;

                //Pane Heights

                HomeScreenGrid.Height = 0;
                LuaScreenGrid.Height = 400;
                InjectorScreenGrid.Height = 0;
                OptionsScreenGrid.Height = 0;
            }
            else if (index == 3)
            {

                //Change Mode

                Mode.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                Mode.Text = "N/A";

                //Hide Status

                Status.Visibility = Visibility.Hidden;
                StatusLabel.Visibility = Visibility.Hidden;


                // Lua Control Panel Visibility

                ButtonLoadScript.Visibility = Visibility.Hidden;
                ButtonSaveScript.Visibility = Visibility.Hidden;
                ButtonClearText.Visibility = Visibility.Hidden;
                ButtonExecuteScript.Visibility = Visibility.Hidden;
                ButtonReAttach.Visibility = Visibility.Hidden;
                ButtonKillTask.Visibility = Visibility.Hidden;

                // Pane Visibility

                LuaScreenGrid.Visibility = Visibility.Hidden;
                InjectorScreenGrid.Visibility = Visibility.Hidden;
                HomeScreenGrid.Visibility = Visibility.Hidden;
                OptionsScreenGrid.Visibility = Visibility.Visible;

                //Pane Heights

                HomeScreenGrid.Height = 0;
                LuaScreenGrid.Height = 0;
                InjectorScreenGrid.Height = 0;
                OptionsScreenGrid.Height = 400;
            }
        }



        private void ButtonExecuteScript_Click(object sender, RoutedEventArgs e)
        {
            if (config[1] == "wrd")
            {
                WRD.SendLuaScript(ScriptTextBox.Text);
            }
            else if (config[1] == "anmo")
            {
                ANMO.ExecuteScript(ScriptTextBox.Text);
            }
            else if (config[1] == "ezxp")
            {
                EZXP.ExecuteScript(ScriptTextBox.Text);
            }
            else if (config[1] == "cdrk")
            {
                CDRK.ExecuteScript(ScriptTextBox.Text);
            }
            else if (config[1] == "csq")
            {
                CSQ.Execute(ScriptTextBox.Text);
            }
        }

        private void ButtonClearText_Click(object sender, RoutedEventArgs e)
        {
            ScriptTextBox.Text = "";
        }

        private void ButtonLoadScript_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = System.IO.Path.GetFullPath("./Scripts");
            openFileDialog.Filter = "Lua File (*.lua)|*.lua|Text File (*.txt)|*.txt";
            openFileDialog.FilterIndex = 2;
            openFileDialog.RestoreDirectory = true;
            if (openFileDialog.ShowDialog() == false)
            {
                return;
            }

            try
            {
                ScriptTextBox.Text = "";
                System.IO.Stream stream;
                if ((stream = openFileDialog.OpenFile()) == null)
                    return;
                using (stream)
                    this.ScriptTextBox.Text = System.IO.File.ReadAllText(openFileDialog.FileName);
            }
            catch (Exception ex)
            {
                int num = (int)MessageBox.Show("An unexpected error has occured", "Oof!", MessageBoxButton.OK, MessageBoxImage.Information);

            }
        }

        private void ButtonSaveScript_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();

            saveFileDialog.Filter = "Lua File (*.lua)|*.lua|Text File (*.txt)|*.txt";
            saveFileDialog.FilterIndex = 1;
            saveFileDialog.RestoreDirectory = true;
            saveFileDialog.InitialDirectory = System.IO.Path.GetFullPath("./Scripts");

            if (saveFileDialog.ShowDialog() == true)
            {
                System.IO.StreamWriter file = new System.IO.StreamWriter(saveFileDialog.FileName.ToString());
                file.WriteLine(ScriptTextBox.Text);
                file.Close();
            }

            var LastSelected = ScriptsListBox.SelectedItem;

            ScriptsListBox.SelectedItem = null;

            ScriptsListBox.Items.Clear();
            LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.txt");
            LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.lua");

            ScriptsListBox.SelectedItem = LastSelected;

        }

        private void ApiType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            string value = this.ApiType.SelectedItem.ToString();

            if (value == "System.Windows.Controls.ComboBoxItem: EasyExploits")
            {
                string dump = "";
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[1] = "ezxp";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[1] = "ezxp";


            }
            else if (value == "System.Windows.Controls.ComboBoxItem: WeAreDevs")
            {
                string dump = null;
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[1] = "wrd";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[1] = "wrd";
            }
            else if (value == "System.Windows.Controls.ComboBoxItem: Anemo (CheatSquad v2)")
            {
                string dump = null;
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[1] = "anmo";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[1] = "anmo";
            }
            else if (value == "System.Windows.Controls.ComboBoxItem: ClubDark")
            {
                string dump = null;
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[1] = "cdrk";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[1] = "cdrk";
            }
            else if (value == "System.Windows.Controls.ComboBoxItem: CheatSquad")
            {
                string dump = null;
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[1] = "csq";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[1] = "csq";
            }
        }

        /* Unused Change Theme Function */

        private void Theme_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Unused
        }

        /* Disable Blur And Update Config When AcrylicEffect Object UnChecked */

        private void AcrylicEffect_Unchecked(object sender, RoutedEventArgs e)
        {
            DisableBlur();

            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[2] = "false";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[2] = "flase";
        }

        /* Enable Blur And Update Config When AcrylicEffect Object Checked */

        private void AcrylicEffect_Checked(object sender, RoutedEventArgs e)
        {
            EnableBlur();

            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[2] = "true";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[2] = "true";
        }

        /* If Advanced UnFocused Active, Reset Window Opacity When ReFocusing */

        private void MainWindowOuter_Activated(object sender, EventArgs e)
        {
            if (config[3] == "true")
            {
                MainWindowOuter.Opacity = 1;
            }
            else if (config[3] == "false")
            {
                return;
            }
        }

        /* If Advanced UnFocused Active, Change Window Opacity When UnFocusing */

        private void Window_Deactivated(object sender, EventArgs e)
        {
            if (config[3] == "true")
            {
                MainWindowOuter.Opacity = 0.65;
            }
            else if (config[3] == "false")
            {
                return;
            }
        }

        /* When Scripts Label Clicked Go To Settings View And Focus Textbox */

        private void ScriptsDirLabel_Click(object sender, RoutedEventArgs e)
        {
            MoveMenuCursor(3);
            ListViewMenu.SelectedIndex = 3;
            ScriptsDirectory.Focus();
        }

        /* Save Scripts Directory When Textbox Loses Focus */

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (Directory.Exists(System.IO.Path.GetFullPath(ScriptsDirectory.Text)))
            {
                ScriptsListBox.SelectedItem = null;
                ScriptsListBox.Items.Clear();
                LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.txt");
                LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.lua");


                string paththing = "";

                if (System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text)).Length >= 9)
                {
                    paththing = $"{(System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text))).Substring(0, 8)}...";
                }
                else
                {
                    paththing = $"{System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text))}";
                }

                ScriptsDirLabel.Content = $"{paththing}";

                string dump = null;
                string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                temp[4] = $"{ScriptsDirectory.Text}";

                for (int i = 0; i < temp.Length; i++)
                {
                    dump = dump + temp[i] + "\n";
                }

                File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                config[4] = $"{ScriptsDirectory.Text}";
            }

            else
            {
                MessageBox.Show("Doesn't look like that file directory exists.", "Oops!", MessageBoxButton.OK, MessageBoxImage.Error);
                ScriptsDirectory.Text = "./Scripts";
                ScriptsDirectory.Focus();
            }

        }

        /* When Enter Key Pressed While Textbox Focused Change Scripts Directory in App and Config */

        private void ScriptsDirectory_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Return || e.Key == Key.Enter)
            {


                if (Directory.Exists(System.IO.Path.GetFullPath(ScriptsDirectory.Text)))
                {
                    ScriptsListBox.SelectedItem = null;
                    ScriptsListBox.Items.Clear();
                    LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.txt");
                    LocalFunctions.PopulateListBox(ScriptsListBox, ScriptsDirectory.Text, "*.lua");

                    string paththing = "";

                    if (System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text)).Length >= 13)
                    {
                        paththing = $"{(System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text))).Substring(0, 12)}...";
                    }
                    else
                    {
                        paththing = $"{System.IO.Path.GetFileName(System.IO.Path.GetFullPath(ScriptsDirectory.Text))}";
                    }

                    ScriptsDirLabel.Content = $"{paththing}";

                    string dump = null;
                    string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

                    temp[4] = $"{ScriptsDirectory.Text}";

                    for (int i = 0; i < temp.Length; i++)
                    {
                        dump = dump + temp[i] + "\n";
                    }

                    File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

                    config[4] = $"{ScriptsDirectory.Text}";
                }

                else
                {
                    MessageBox.Show("Doesn't look like that file directory exists.", "Oops!", MessageBoxButton.OK, MessageBoxImage.Error);
                    ScriptsDirectory.Text = "./Scripts";
                    ScriptsDirectory.Focus();
                }
            }
        }

        /* Set AdvancedUnfocus Config To False When Checkbox Unchecked */

        private void AdvUnfocus_Unchecked(object sender, RoutedEventArgs e)
        {
            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[3] = "false";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[3] = "flase";
        }

        /* Set AdvancedUnfocus Config To True When Checkbox Unchecked */

        private void AdvUnfocus_Checked(object sender, RoutedEventArgs e)
        {
            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[3] = "true";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[3] = "true";
        }

        /* Unused Change Theme Function */

        public static void ChangeTheme(int index)
        {
            //UnFinished
        }

        /* Change Tab To Injector When Injector Button ( Home Screen ) Clicked */

        private void dllButton_Click(object sender, RoutedEventArgs e)
        {
            Mode.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFF0000");
            Mode.Text = "DLL Injector";

            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFFF000");
            Status.Text = "Loading...";

            procList.Items.Clear();
            procs.Clear();

            Process[] processCollection = Process.GetProcesses();
            foreach (Process Proc in processCollection)
            {
                procList.Items.Add(Proc.ProcessName + $" ({Proc.Id})");

                procs.Add(Proc.Id);
            }

            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
            Status.Text = "Idle";

            procList.Focus();

            ListViewMenu.SelectedIndex = 1;
            MoveMenuCursor(1);
        }

        /* Change Tab To Executor When Lua Button ( Home Screen ) Clicked */

        /* This Function Will Also Re-Initialize All Objects Within The Tab */

        private void luaButton_Click(object sender, RoutedEventArgs e)
        {

            if (config[5] == "true")
            {
                if (apiInjected == true)
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                }

                if (config[1] == "wrd")
                {

                    WRD.LaunchExploit();

                    Thread.Sleep(750);

                    if (WRD.isAPIAttached())
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                        Status.Text = "Injected";
                        apiInjected = true;
                        ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        MoveMenuCursor(2);
                        ListViewMenu.SelectedIndex = 2;
                    }
                    else
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                        Status.Text = "Idle";
                        apiInjected = false;
                    }
                }
                else if (config[1] == "ezxp")
                {

                    EZXP.LaunchExploit();
                    if (!DllPipes.NamedPipeExist("ocybedam"))
                    {
                        Thread.Sleep(5000);
                    }

                    if (DllPipes.NamedPipeExist("ocybedam"))
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                        Status.Text = "Injected";
                        apiInjected = true;
                        ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        MoveMenuCursor(2);
                        ListViewMenu.SelectedIndex = 2;
                    }
                    else
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                        Status.Text = "Idle";
                        apiInjected = false;
                    }

                }
                else if (config[1] == "ezxp")
                {

                    ANMO.InjectAnemo();
                    if (!DllPipes.NamedPipeExist("AnemoPIPE"))
                    {
                        Thread.Sleep(5000);
                    }

                    if (DllPipes.NamedPipeExist("AnemoPIPE"))
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                        Status.Text = "Injected";
                        apiInjected = true;
                        ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        MoveMenuCursor(2);
                        ListViewMenu.SelectedIndex = 2;
                    }
                    else
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                        Status.Text = "Idle";
                        apiInjected = false;
                    }

                }
                else if (config[1] == "cdrk")
                {

                    CDRK.LaunchExploit();

                    if (!DllPipes.NamedPipeExist("zxc"))
                    {
                        Thread.Sleep(5000);
                    }

                    if (DllPipes.NamedPipeExist("zxc"))
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                        Status.Text = "Injected";
                        apiInjected = true;
                        ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        MoveMenuCursor(2);
                        ListViewMenu.SelectedIndex = 2;
                    }
                    else
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                        Status.Text = "Idle";
                        apiInjected = false;
                    }
                }
                else if (config[1] == "csq")
                {

                    try
                    {
                        CSQ.Attach();
                    }
                    catch (Exception err)
                    {
                        MessageBox.Show("Error", $"{err}", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    if (!DllPipes.NamedPipeExist("taStqdau1Ch1ee33"))
                    {
                        Thread.Sleep(5000);
                    }

                    if (DllPipes.NamedPipeExist("taStqdau1Ch1ee33"))
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                        Status.Text = "Injected";
                        apiInjected = true;
                        ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                        MoveMenuCursor(2);
                        ListViewMenu.SelectedIndex = 2;
                    }
                    else
                    {
                        Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                        Status.Text = "Idle";
                        apiInjected = false;
                    }
                }

            }
            else
            {
                MoveMenuCursor(2);
                ListViewMenu.SelectedIndex = 2;
            }
        }

        /* Attach Api When ButtonReAttach Clicked */

        private void ButtonReAttach_Click(object sender, RoutedEventArgs e)
        {
            if (config[1] == "wrd")
            {

                WRD.LaunchExploit();

                Thread.Sleep(750);

                if (WRD.isAPIAttached())
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                    apiInjected = true;
                    ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                    apiInjected = false;
                }
            }
            else if (config[1] == "anmo")
            {

                ANMO.InjectAnemo();

                Thread.Sleep(750);

                if (ANMO.IsInjected())
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                    apiInjected = true;
                    ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                    apiInjected = false;
                }
            }
            else if (config[1] == "ezxp")
            {

                EZXP.LaunchExploit();
                if (!DllPipes.NamedPipeExist("ocybedam"))
                {
                    Thread.Sleep(5000);
                }

                if (DllPipes.NamedPipeExist("ocybedam"))
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                    apiInjected = true;
                    ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                    apiInjected = false;
                }

            }
            else if (config[1] == "cdrk")
            {

                CDRK.LaunchExploit();

                if (!DllPipes.NamedPipeExist("zxc"))
                {
                    Thread.Sleep(5000);
                }

                if (DllPipes.NamedPipeExist("zxc"))
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                    apiInjected = true;
                    ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                    apiInjected = false;
                }
            }
            else if (config[1] == "csq")
            {

                try
                {
                    CSQ.Attach();
                }
                catch (Exception err)
                {
                    MessageBox.Show("Error", $"{err}", MessageBoxButton.OK, MessageBoxImage.Error);
                }

                if (!DllPipes.NamedPipeExist("taStqdau1Ch1ee33"))
                {
                    Thread.Sleep(5000);
                }

                if (DllPipes.NamedPipeExist("taStqdau1Ch1ee33"))
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF00FF00");
                    Status.Text = "Injected";
                    apiInjected = true;
                    ButtonReAttach.ToolTip = new ToolTip { Content = "Re-Attach API" };
                }
                else
                {
                    Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
                    Status.Text = "Idle";
                    apiInjected = false;
                }
            }
        }

        /* Refresh Proccess List When refProcList Clicked */

        private void refProcList_Click(object sender, RoutedEventArgs e)
        {

            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FFFFF000");
            Status.Text = "Loading...";

            procList.Items.Clear();
            procs.Clear();

            Process[] processCollection = Process.GetProcesses();
            foreach (Process Proc in processCollection)
            {
                procList.Items.Add(Proc.ProcessName + $" ({Proc.Id})");

                procs.Add(Proc.Id);
            }

            Status.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#FF7C7C7C");
            Status.Text = "Idle";

            procList.Focus();

        }

        /* Add DLL To DLL List When addDll Clicked */


        private void addDll_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = System.IO.Path.GetFullPath("./DLLs");
            openFileDialog.Filter = "Dynamic Library Link File (*.dll)|*.dll";
            openFileDialog.FilterIndex = 1;
            openFileDialog.RestoreDirectory = true;
            if (openFileDialog.ShowDialog() == false)
            {
                return;
            }

            try
            {

                string temp = openFileDialog.FileName;
                dlls.Add(temp);

                dllNamesList.Items.Add(System.IO.Path.GetFileName(temp));

                if (BasicInject.GetDllMachineType(temp).Equals(BasicInject.MachineType.IMAGE_FILE_MACHINE_I386))
                {
                    ListViewItem tempItem = new ListViewItem();

                    tempItem.Content = "32bit";
                    tempItem.Focusable = false;
                    tempItem.IsEnabled = false;

                    dllTypesList.Items.Add(tempItem);
                }
                else if (BasicInject.GetDllMachineType(temp).Equals(BasicInject.MachineType.IMAGE_FILE_MACHINE_IA64))
                {
                    ListViewItem tempItem = new ListViewItem();

                    tempItem.Content = "64bit";
                    tempItem.Focusable = false;
                    tempItem.IsEnabled = false;

                    dllTypesList.Items.Add(tempItem);
                }
            }
            catch (Exception ex)
            {
                int num = (int)MessageBox.Show("An unexpected error has occured", $"{ex}", MessageBoxButton.OK, MessageBoxImage.Information);

            }
        }

        /* Remove Current Selected DLL From DLL List When rmvDll Clicked */

        private void rmvDll_Click(object sender, RoutedEventArgs e)
        {
            if (dllNamesList.Items.Count <= 0)
            {
                return;
            }

            try
            {
                dlls.RemoveAt(dllNamesList.SelectedIndex);
                dllTypesList.Items.RemoveAt(dllNamesList.SelectedIndex);
                dllNamesList.Items.RemoveAt(dllNamesList.SelectedIndex);
            }

            catch
            {

            }

        }

        /* Clear All DLLs In DLL List When clrDlls Clicked */

        private void clrDlls_Click(object sender, RoutedEventArgs e)
        {
            dlls.Clear();

            dllTypesList.Items.Clear();
            dllNamesList.Items.Clear();
        }

        /* Inject All DLLs In DLL List When injectButton Clicked */

        private void injectButton_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;

            foreach (string s in dlls)
            {
                BasicInject.InjectDLL(procs[procList.SelectedIndex], dlls[i]);
                i++;
            }
        }

        /* Make Selected Proccess Lighter In Color And Update ToolTip */

        private void procList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ListBoxItem selected = new ListBoxItem();

            selected.Content = procList.SelectedValue;
            selected.Foreground = (Brush)(new System.Windows.Media.BrushConverter()).ConvertFromString("#DDFFFFFF");

            procList.ToolTip = new ToolTip() { Content = procList.SelectedValue };

            procList.SelectedItem = selected;
        }

        /* Configure Button Click Handler */

        private void configInjector_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Injector Configuration Settings coming in v2.1", "Feature Not Availible", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        /* Open About Page When about Clicked */

        private void about_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("https://www.316tb.dev/#magma-iae");
        }

        /* Open Home Page When webSite Clicked */

        private void webSite_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("https://www.316tb.dev/");
        }

        /* Open GitHub Repo When gitHub Clicked */

        private void gitHub_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("https://github.com/Not316tb/");
        }

        /* Open Discord Invite When discUrl Clicked */

        private void discUrl_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("https://discord.gg/rpaF3hKrC7");
        }

        /* Update Attach From Home Config To False When atchFromHome UnChecked */

        private void atchFromHome_Unchecked(object sender, RoutedEventArgs e)
        {
            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[5] = "false";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[5] = "flase";
        }

        /* Update Attach From Home Config To True When atchFromHome Checked */

        private void atchFromHome_Checked(object sender, RoutedEventArgs e)
        {
            string dump = null;
            string[] temp = File.ReadAllLines(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"));

            temp[5] = "true";

            for (int i = 0; i < temp.Length; i++)
            {
                dump = dump + temp[i] + "\n";
            }

            File.WriteAllText(System.IO.Path.GetFullPath("config ( DO NOT EDIT! ).txt"), dump);

            config[5] = "true";
        }
    }
}
