<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspnWebServiceDB.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0033CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style1">Relação de Produtos</h1>
        <hr />
        <div>
            <asp:GridView ID="gdvProdutos" runat="server" AutoGenerateColumns="false">
                 <Columns>
                    <asp:TemplateField HeaderText="Id" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nome" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblNome" runat="server" Text='<%# Eval("Nome") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Preço" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblPreco" runat="server" Text='<%# Eval("Preco") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Estoque" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:Label Estoque="lblEstoque" runat="server" Text='<%# Eval("Estoque") %>'></asp:Label>
                        </ItemTemplate>
                            </asp:TemplateField>
                     <asp:TemplateField HeaderText="Descrição" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:Label Estoque="lblDrescricão" runat="server" Text='<%# Eval("Descricao") %>'></asp:Label>
                        </ItemTemplate>
                            </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

