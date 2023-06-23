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
using ClientAgent.Components;
using ClientAgent.Pages;

namespace ClientAgent.Pages
{
    /// <summary>
    /// Логика взаимодействия для AgentPage.xaml
    /// </summary>
    public partial class AgentPage : Page
    {
        public AgentPage()
        {
            InitializeComponent();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DBConnect.db.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                ListAgent.ItemsSource = DBConnect.db.Agent.ToList();
            }
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            var selAgent = (sender as Button).DataContext as Agent;
            Navigation.NextPage(new Navig("Редактирование риелтора", new AddEditAgentPage(selAgent)));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var selAgent = (sender as Button).DataContext as Agent;
            if (MessageBox.Show("Вы точно хотите удалить эту запись?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    DBConnect.db.Agent.Remove(selAgent);
                    DBConnect.db.SaveChanges();
                    MessageBox.Show("Данные удалены");
                    ListAgent.ItemsSource = DBConnect.db.Agent.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void AddNewAgentBtn_Click(object sender, RoutedEventArgs e)
        {
            Navigation.NextPage(new Navig("Добавление нового риелтора", new AddEditAgentPage(new Agent())));
        }
    }
}
