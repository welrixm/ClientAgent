﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;


namespace ClientAgent.Components
{
    class Navigation
    {
        public static List<Navig> navigs = new List<Navig>();
        public static MainWindow main;
        public static void NextPage(Navig navig)
        {
            navigs.Add(navig);
            Update(navig);
        }
        public static void BackPage()
        {
            if (navigs.Count > 1)
            {
                navigs.RemoveAt(navigs.Count - 1);

            }
            Update(navigs[navigs.Count - 1]);
        }
        private static void Update(Navig navig)
        {
            main.TitlePage.Text = navig.Title;
            //main.ExitBtn.Visibility = isAuth == true ? System.Windows.Visibility.Visible : System.Windows.Visibility.Collapsed;
            // main.BackBtn.Visibility = navigs.Count > 2 ? System.Windows.Visibility.Visible : System.Windows.Visibility.Collapsed;
            main.FrameMain.Navigate(navig.Page);
        }
    }
    class Navig
    {
        public string Title { get; set; }
        public Page Page { get; set; }
        public Navig(string title, Page page)
        {
            Title = title;
            Page = page;
        }
    }
}
