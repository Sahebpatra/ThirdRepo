using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace StudentRgistration
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-KN0NO7FC\\SQLEXPRESS;Initial Catalog=Student Detals;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            
           // con.ConnectionString = "Data Source=LAPTOP-KN0NO7FC\\SQLEXPRESS;Initial Catalog=Student Detals;Integrated Security=True";


            if (!IsPostBack)
            {
                txtfn.Focus();
                btndlt.Visible = btnupdt.Visible = btnsave.Visible = btncncl.Visible =btnsrch.Visible = false;
                txtadrs.Enabled = txtdob.Enabled = txtfn.Enabled = txtln.Enabled = txtmno.Enabled = ddlcrs.Enabled = rbgen.Enabled = false;
                btnsrch.Visible = true;
                AutoGride();
            }
        }
        protected void btnsrch_Click(object sender, EventArgs e)
        {
          
          btnsrch.Visible=  txtid.Enabled=  btndlt.Visible = btnupdt.Visible = btncncl.Visible = true;
            btninsrt.Visible = btnsrch.Visible = false;
            txtadrs.Enabled = txtdob.Enabled = txtfn.Enabled = txtln.Enabled = txtmno.Enabled = ddlcrs.Enabled = rbgen.Enabled = true;

            cmd.CommandText = "select * from StudentDetails where Id='" + txtid.Text + "'";
            cmd.Connection = con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();



            if (sdr.HasRows)
            {

                while (sdr.Read())
                {
                    txtfn.Text = sdr.GetValue(1).ToString();
                    txtln.Text = sdr.GetValue(2).ToString();
                    rbgen.SelectedValue = sdr.GetValue(3).ToString();
                    txtdob.Text = sdr.GetValue(4).ToString();
                    ddlcrs.SelectedItem.Text = sdr.GetValue(5).ToString();
                    txtadrs.Text = sdr.GetValue(6).ToString();
                    txtmno.Text = sdr.GetValue(7).ToString();
                }
            }
        
            else
                {
                    Response.Write("There is  No Data Found");
                }
        }

        protected void btnupdt_Click(object sender, EventArgs e)
        {
           
            cmd.CommandText = "update studentdetails set FirstName='" + txtfn.Text + "',LastName='" + txtln.Text + "',Gender='" + rbgen.Text + "',Dob='" + txtdob.Text + "',Course='" + ddlcrs.Text + "',Address='" + txtadrs.Text + "',Mobile='" + txtmno.Text + "' where Id='" + txtid.Text + "'";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            AutoGride();
        }

        protected void btndlt_Click(object sender, EventArgs e)
        {
           
            cmd.CommandText = "delete from studentdetails where Id='"+txtid.Text+"'";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            AutoGride();
        }

        protected void btninsrt_Click(object sender, EventArgs e)
        {
            AutoGride();
            txtfn.Focus();
            txtid.Enabled= btndlt.Visible = btnupdt.Visible = btnsave.Visible =btninsrt.Visible= btnsrch.Visible= false;
            btnsave.Visible = btncncl.Visible = true;
            txtadrs.Enabled = txtdob.Enabled = txtfn.Enabled = txtln.Enabled = txtmno.Enabled = ddlcrs.Enabled = rbgen.Enabled = true;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
           
            cmd.CommandText = "insert into StudentDetails(FirstName,LastName,Gender,Dob,Course,Address,Mobile) " +
                "values ('" + txtfn.Text + "','" + txtln.Text + "','" + rbgen.Text + "','" + txtdob.Text + "','" + ddlcrs.SelectedValue + "','" + txtadrs.Text + "','" + txtmno.Text + "')";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            AutoGride();
        }

        protected void btncncl_Click(object sender, EventArgs e)
        {
           
            txtfn.Focus();
            btndlt.Visible = btnupdt.Visible = btnsave.Visible = btncncl.Visible = false;
            txtadrs.Enabled = txtdob.Enabled = txtfn.Enabled = txtln.Enabled = txtmno.Enabled = ddlcrs.Enabled = rbgen.Enabled = false;
            txtadrs.Text = txtdob.Text = txtfn.Text = txtid.Text = txtln.Text = txtmno.Text = "";
            txtid.Enabled= btninsrt.Visible  =btnsrch.Visible= true;
            rbgen.ClearSelection();
            ddlcrs.SelectedIndex =0;
            AutoGride();
        }
        void AutoGride()
        {
            cmd.CommandText = "select * from StudentDetails";
            cmd.Connection = con;
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            d.Fill(dt);
            GridView1.DataBind();
        }

       
    }
 }
