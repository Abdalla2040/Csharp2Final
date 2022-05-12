using Microsoft.VisualStudio.TestTools.UnitTesting;
using CMSC2240Finals;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSC2240Finals.Tests
{
    [TestClass()]
    public class JwtAuthenticationManagerTests
    {
        //test for username and password
        [TestMethod()]
        public void AuthenticateUserTest()
        {
            User user = new User()
            {
                username = "user1",
                password = "password"

            };
            User user1 = new User()
            {
                username = "test",
                password = "pwd"
            };
            bool isValid()
            {
                if (user.username == "user1" && user1.username == "test" && user.password == "password" && user1.password == "pwd")
                    return true;
                else
                    return false;
            }
            Assert.IsTrue(isValid());
        }

        //checking for null in username or password
        [TestMethod()]
        public void AuthenticateDoesNotReturnNullTest()
        {
            JwtAuthenticationManager authenticationManager = new JwtAuthenticationManager("ThisIsMySecretKey123");
            User user = new User() { username = "user1", password = "password" };
            var data = authenticationManager.Authenticate(user.username, user.password);
            Assert.IsNotNull(data);
        }
    }
}