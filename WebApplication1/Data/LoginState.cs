using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Data
{
    public class LoginState
    {
        public bool IsLoggedIn { get; set; }
        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }

        public event Action OnChange;

        public void SetLogin(UserModel userModel)
        {
            IsLoggedIn = true;
            ID = userModel.Id;
            Name = userModel.Name;
            Email = userModel.Email;
            NotifyStateChanged();
            Console.WriteLine("LoginState.cs: Logged " + userModel.Email);
        }

        public void LogOut()
        {
            IsLoggedIn = false;
            ID = 0;
            Name = null;
            Email = null;
            NotifyStateChanged();
            Console.WriteLine("Loged Out!");
        }

        private void NotifyStateChanged()
        {
            OnChange?.Invoke();
        }
    }
}
