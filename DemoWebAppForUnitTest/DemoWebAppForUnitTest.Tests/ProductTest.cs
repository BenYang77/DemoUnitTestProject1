// <copyright file="ProductTest.cs">Copyright ©  2018</copyright>
using System;
using DemoWebAppForUnitTest.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DemoWebAppForUnitTest.Models.Tests
{
    /// <summary>This class contains parameterized unit tests for Product</summary>
    [PexClass(typeof(Product))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [TestClass]
    public partial class ProductTest
    {
        void mathodA()
        {
            //Add this info for Request Pull
            string a = "";
            string b = "";
            a = a.ToString() + b.ToString();
            b = b + a;
        }
    }
}
