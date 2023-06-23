using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ClientAgent.Pages;
using ClientAgent.Components;

namespace ClientAgent.Pages
{
    /// <summary>
    /// Логика взаимодействия для MenuPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        private void ClientBtn_Click(object sender, RoutedEventArgs e)
        {
            Navigation.NextPage(new Navig("Clients", new ClientPage()));
        }

        private void AgentBtn_Click(object sender, RoutedEventArgs e)
        {
            Navigation.NextPage(new Navig("Agents", new AgentPage()));
        }
    }
}
