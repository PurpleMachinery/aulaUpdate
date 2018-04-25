using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Etec.AulaUpdate
{
    public partial class Form2 : Form
    {
        SqlConnection conn = new SqlConnection("Password=info211;Persist Security Info=True;User ID=sa;Initial Catalog=info;Data Source=LAB-08-07");
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            dataGridCliente.ReadOnly = true;
            CarregarClientes();
        }

        private void CarregarClientes()
        {
            String sql = "select pk_id, nome, endereco from clientes";
            SqlDataAdapter comando = new SqlDataAdapter(sql, conn);
            DataSet set = new DataSet();
            comando.Fill(set);
            dataGridCliente.DataSource = set;
            dataGridCliente.DataMember = set.Tables[0].TableName;
        }

        private void dataGridCliente_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int coluna = e.ColumnIndex, linha = e.RowIndex;
                txtId.Text = dataGridCliente.Rows[e.RowIndex].Cells[0].Value.ToString();
                txtNome.Text = dataGridCliente.Rows[e.RowIndex].Cells[1].Value.ToString();
                txtEndereco.Text = dataGridCliente.Rows[e.RowIndex].Cells[2].Value.ToString();
            }
            catch
            {
                MessageBox.Show("Time error");
            }
        }
    }
}
