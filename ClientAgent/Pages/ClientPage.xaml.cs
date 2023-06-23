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
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        public ClientPage()
        {
            InitializeComponent();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            var selClient = (sender as Button).DataContext as Client;
            Navigation.NextPage(new Navig("Редактирование клиента", new AddEditClientPage(selClient)));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var selClient = (sender as Button).DataContext as Client;
            if (MessageBox.Show("Вы точно хотите удалить эту запись?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    DBConnect.db.Client.Remove(selClient);
                    DBConnect.db.SaveChanges();
                    MessageBox.Show("Данные удалены");
                    ListClient.ItemsSource = DBConnect.db.Client.ToList();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

       

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DBConnect.db.ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                ListClient.ItemsSource = DBConnect.db.Client.ToList();
            }
        }

        private void AddNewClientBtn_Click(object sender, RoutedEventArgs e)
        {
            Navigation.NextPage(new Navig("Добавление нового клиента", new AddEditClientPage(new Client())));
        }
    }
}
