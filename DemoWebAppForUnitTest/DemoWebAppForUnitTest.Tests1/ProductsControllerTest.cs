// <copyright file="ProductsControllerTest.cs">Copyright ©  2018</copyright>
using System;
using System.Web.Http;
using DemoWebAppForUnitTest.Controllers;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DemoWebAppForUnitTest.Controllers.Tests
{
    /// <summary>This class contains parameterized unit tests for ProductsController</summary>
    [PexClass(typeof(ProductsController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [TestClass]
    public partial class ProductsControllerTest
    {
        /// <summary>Test stub for GetProduct(Int32)</summary>
        [PexMethod]
        public IHttpActionResult GetProductTest([PexAssumeUnderTest]ProductsController target, int id)
        {
            IHttpActionResult result = target.GetProduct(id);
            return result;
            // TODO: add assertions to method ProductsControllerTest.GetProductTest(ProductsController, Int32)
        }
    }
}
