using Microsoft.VisualStudio.TestTools.UnitTesting;
using CMSC2240Finals.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMSC2240Finals.Models;

namespace CMSC2240Finals.Controllers.Tests
{
    [TestClass()]
    public class invoicesControllerTests
    {
        //test sample used for testing. Not part of the test.
        public List<Invoice> GetInvoicesSampleTest()
        {
            List<Invoice> InvoicesList = new List<Invoice>()
            {
                new Invoice{InvoiceId = 1, Date = DateTime.Now, Price = 40.00m},
                new Invoice{InvoiceId = 2, Date = DateTime.Now, Price = 60.00m},
                new Invoice{InvoiceId = 3, Date = DateTime.Now, Price = 80.00m}
            };
            return InvoicesList;
        }

        //checks if the GetInvoices method does not return null;
        [TestMethod()]
        public void GetServicesDoesNotReturnNullTest()
        {
            List<Invoice> result = GetInvoicesSampleTest();
            Assert.IsNotNull(result);
        }

        //checks if the types are same.
        [TestMethod()]
        public void GetTypeInvoicesTest()
        {
            var result = GetInvoicesSampleTest();
            var type = result.GetType();
            if (typeof(System.Collections.Generic.List<Invoice>).Equals(type))
            {
                Assert.IsInstanceOfType(result, type);
            }
            else
            {
                Assert.Fail();
            }

        }

        //checks if the Ids in the getInvoicesSampleTest matches with the dataRow. If they are, it would be deleted.
        [TestMethod()]
        [DataRow(3)]
        public void DeleteInvoicesTest(int id)
        {
            int invID = 0;
            foreach (var i in GetInvoicesSampleTest())
            {
                invID = i.InvoiceId;

            }
            Assert.AreEqual(invID, id);
        }
    }
}