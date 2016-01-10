﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntryUI.aspx.cs" Inherits="CountryCityManagement.UI.CountryEntryUI" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Country Entry</title>
    <meta charset="utf-8" />
    <!-- Include Font Awesome. -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Include Editor style. -->
    <link href="../froala_editor_2.0.5/css/froala_editor.min.css" rel="stylesheet" type="text/css" />
    <link href="../froala_editor_2.0.5/css/froala_style.min.css" rel="stylesheet" type="text/css" />
    <!-- Include Editor Plugins style. -->
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/char_counter.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/code_view.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/colors.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/emoticons.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/file.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/fullscreen.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/image.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/image_manager.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/line_breaker.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/table.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/video.css" />
</head>
<body>
    <form id="CountryEntryForm" runat="server">
        <div>
            <asp:Panel ID="inputPanel" runat="server" Style="margin-left: 0px" Width="677px" Height="297px" BackColor="#FAFAE7">
                <asp:Label ID="Label3" runat="server" Text="Country Entry" Font-Bold="True" Font-Size="Larger"></asp:Label>
                <br />
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <br />
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="About"></asp:Label>
                <br />
                <textarea id="aboutTextArea" runat="server" cols="20" name="S1" rows="2">
                    Input Country Information Here
                </textarea><br />
                <br />
                <br />
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" />
                <br />
                <br />
                <br />
                <asp:Label ID="messageLabel" runat="server"></asp:Label>
                <br />
            </asp:Panel>
        </div>
        <div style="height: 447px">
            .<asp:Panel ID="gridviewPanel" runat="server" Height="192px" Style="margin-top: 104px">
                <asp:GridView ID="countryEntryGridView" runat="server" AutoGenerateColumns="False" Style="margin-left: 0px; margin-top: 0px;" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="186px" Width="768px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL#">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("CountrySL") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("CountryName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="About">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("AboutCountry") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </asp:Panel>
            <br />
            <br />
            &nbsp;
        </div>
        <!-- Include jQuery. -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <!-- Include JS files. -->
        <script src="../froala_editor_2.0.5/js/froala_editor.min.js"></script>
        <!-- Include Plugins. -->
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/align.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/char_counter.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/code_view.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/colors.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/emoticons.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/entities.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/file.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/font_family.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/font_size.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/fullscreen.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/image.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/image_manager.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/inline_style.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/line_breaker.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/link.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/lists.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/paragraph_format.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/paragraph_style.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/quote.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/table.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/save.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/url.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/video.min.js"></script>
        <!-- Include Language file if we'll use it. -->
        <script type="text/javascript" src="../js/languages/ro.js"></script>
        <!-- Initialize the editor. -->
        <script>
            $(function () {
                $('textarea#aboutTextArea').froalaEditor();
            });
        </script>
    </form>
</body>
</html>
