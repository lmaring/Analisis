﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grades : System.Web.UI.Page
{
    TestServices aux = new TestServices();
    Tests test = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}