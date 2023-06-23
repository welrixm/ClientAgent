using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
using ClientAgent.Components;

namespace ClientAgent.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditAgentPage.xaml
    /// </summary>
    public partial class AddEditAgentPage : Page
    {
        Components.Agent agent;
        public AddEditAgentPage(Components.Agent _agent)
        {
            InitializeComponent();
            agent = _agent;
            DataContext = agent;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (FirstNameTbx.Text.Length > 0 && PatronymicTbx.Text.Length > 0 && LastNameTbx.Text.Length > 0)
            {
                if (dealShareTbx.Text.Length > 0)
                {
                    if (Convert.ToInt32(dealShareTbx.Text) >= 0 && Convert.ToInt32(dealShareTbx.Text) <= 100)
                    {
                        if (agent.Id == 0)
                        {
                            DBConnect.db.Agent.Add(agent);

                        }
                        if (MessageBox.Show("Вы точно хотите сохранить эту запись", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                        {
                            DBConnect.db.SaveChanges();
                            MessageBox.Show("Сохранено");
                            NavigationService.Navigate(new AgentPage());
                        }
                    }
                    else
                        MessageBox.Show("Доля от комиссии не может быть меньше 0 и больше 100");
                }
                else
                {
                    if (agent.Id == 0)
                    {
                        DBConnect.db.Agent.Add(agent);

                    }
                    if (MessageBox.Show("Вы точно хотите сохранить эту запись", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        DBConnect.db.SaveChanges();
                        MessageBox.Show("Сохранено");
                        NavigationService.Navigate(new AgentPage());
                    }
                }
            }
            else
                MessageBox.Show("Заполните ФИО полностью");



        }

        private void FirstNameTbx_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void LastNameTbx_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void PatronymicTbx_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void dealShareTbx_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0))
            {
                e.Handled = true;
            }
        }
    }
}

