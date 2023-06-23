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
    /// Логика взаимодействия для AddEditClientPage.xaml
    /// </summary>
    public partial class AddEditClientPage : Page
    {
        Components.Client client;
        public AddEditClientPage(Components.Client _client)
        {
            InitializeComponent();
            client = _client;
            DataContext = client;
        
        
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (PhoneTbx.Text.Length > 0 || EmailTbx.Text.Length > 0)
            {
                string email = EmailTbx.Text;
                if ( Regex.IsMatch(PhoneTbx.Text, @"^((\+?7|8)[ -]?)?([(]?\d[- ]?[()]?){10}$") && Regex.IsMatch(PhoneTbx.Text, @"^(\+?7|8)?[\s(-]?[(-]?\d{3,4}[)-]?[ )-]?\d{2,7}[ -]?\d{2,4}[ -]?\d{0,2}$") || Regex.IsMatch(email, @"^[\w.-]+@\w+\.\w+$") )
                {

                   // var ClientId = DBConnect.db.Client.Where(x => x.LastName == LastNameTbx.Text.Trim() && x.FirstName == FirstNameTbx.Text.Trim()).FirstOrDefault();
                    if (client.Id == 0)
                    {
                        DBConnect.db.Client.Add(client);
                        //DBConnect.db.Client.Add(new Client
                        //{
                        //    Email = email,
                        //    LastName = LastNameTbx.Text.Trim(),
                        //    Patronymic = PatronymicTbx.Text.Trim(),
                        //    FirstName = FirstNameTbx.Text.Trim(),
                        //    Phone = PhoneTbx.Text.Trim()
                        //});
                        
                    }
                    if(MessageBox.Show("Вы точно хотите сохранить", "Уведомления", MessageBoxButton.YesNo, MessageBoxImage.Question)== MessageBoxResult.Yes)
                    {
                        DBConnect.db.SaveChanges();
                        MessageBox.Show("yes");
                        Navigation.NextPage(new Navig("Клиенты", new ClientPage()));
                    }
                    
                   

                }
                else
                {
                    MessageBox.Show($" Проверьте почту {email} или телефон на корректность");
                    EmailTbx.Clear();
                }
            }
            else MessageBox.Show("Заполните почту или телефон");
        }
        private void PhoneTb_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void PatronymicTb_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
        }

        private void NameTb_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
           
        }

        private void SurnameTb_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsLetter(e.Text, 0))
            {
                e.Handled = true;
            }
        }
    }
}
