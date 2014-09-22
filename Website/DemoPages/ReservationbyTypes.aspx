﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReservationbyTypes.aspx.cs" Inherits="DemoPages_ReservationbyTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Description" DataValueField="EventCode"></asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SpecialEvent_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" PageSize="5">
        <AlternatingRowStyle BackColor="#CCCCFF" />
        <Columns>
            <asp:BoundField DataField="ReservationID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ReservationID">
            <HeaderStyle BackColor="#FF0066" Font-Size="XX-Large" HorizontalAlign="Center" />
            <ItemStyle Font-Size="XX-Small" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="Name" 
                SortExpression="CustomerName">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="ReservationDate" DataFormatString="{0:MMM dd, yyyy}" 
                HeaderText="Date" SortExpression="ReservationDate">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="NumberinParty" SortExpression="NumberinParty">
                <ItemTemplate>
                    <asp:TextBox ID="NumberinParty" runat="server" Text='<%# Bind("NumberinParty") %>' Columns="3"></asp:TextBox>                                       
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact #">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ContactPhone") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ReservationStatus" HeaderText="ReservationStatus" SortExpression="ReservationStatus" />
            <asp:BoundField DataField="Eventcode" HeaderText="Eventcode" SortExpression="Eventcode" />
        </Columns>
        <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" NextPageText="Next" PageButtonCount="6" PreviousPageText="Back" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Reservation_List" TypeName="eRestaurantSystem.BLL.eRestaurantController"></asp:ObjectDataSource>
</asp:Content>

