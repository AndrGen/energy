<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="energy._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%;">
        <tr>
            <td style="width: 168px">Введите прибор учета</td>
            <td><asp:DropDownList ID="DropDownListMeters" runat="server" DataSourceID="LinqDataSourceEnergy" DataTextField="caption" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMeters_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSourceEnergy" runat="server" ContextTypeName="energy.App_Data.DataClassesEnergyDataContext" EntityTypeName="" Select="new (caption, id)" TableName="meters">
                </asp:LinqDataSource>
            </td>
       </tr>
        <tr>
            <td style="width: 168px">Выберите дату</td>
            <td><asp:Calendar ID="CalendarEnergyDate" runat="server" OnSelectionChanged="CalendarEnergyDate_SelectionChanged"></asp:Calendar></td>
        </tr>


       </table>

    <br />
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <asp:GridView ID="GridViewEnergyReport" runat="server" AllowSorting="True" Width="100%" >
        </asp:GridView>
    </asp:Panel>

</asp:Content>
