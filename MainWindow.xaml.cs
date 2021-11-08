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
using System.Data;




namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    /// 
    
    public partial class MainWindow : Window
    {
        
        public class user
        {
            public string Image { get; set; }
            public string Title { get; set; }
            public string Price { get; set; }
        }
        
        
        void LoadUsers()
        {
            DataTable dt_users = Select("SELECT * FROM [dbo].[Products]"); // данные из БД  

            for (int i = 0; i < dt_users.Rows.Count; i++) // перебираем данные  
            {
                user dataUser = new user() // создаём экземпляр класса        
                {
                    Image = dt_users.Rows[i][2].ToString(), // указываем изображение из таблицы    
                    Title = dt_users.Rows[i][0].ToString(), // указываем логин         
                    Price = dt_users.Rows[i][1].ToString() // казываем пароль     
                };
                listUsers.Items.Add(dataUser); // выводим строку в список 
            }
        }

        public MainWindow()
        {
            InitializeComponent();
            LoadUsers();
        }

        public DataTable Select(string selectSQL);
    }
       
}
