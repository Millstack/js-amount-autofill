<%@ Page Language="C#" AutoEventWireup="true" CodeFile="esecr.aspx.cs" Inherits="esecr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    

    <div class="formDiv">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Item Name</td> <br />
                <td class="auto-style3">Price</td>
                <td class="auto-style4">Quantity</td>
                <td class="auto-style6">Amount</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="item" runat="server"  Width="152px"></asp:TextBox>
                </td> 
                <td class="auto-style3">
                    <asp:TextBox ID="price" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="qty" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="amount" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>


    <script type="text/javascript">
        (function calculateAmount() {
            const priceTextbox = document.getElementById('<%= price.ClientID %>');
            const qtyTextbox = document.getElementById('<%= qty.ClientID %>');
            const amountTextbox = document.getElementById('<%= amount.ClientID %>');

            priceTextbox.addEventListener("input", updateAmount);
            qtyTextbox.addEventListener("input", updateAmount);

            function updateAmount() {
                const price = parseFloat(priceTextbox.value) || 0;
                const qty = parseFloat(qtyTextbox.value) || 0;

                const result = Math.round(price * qty);
                amountTextbox.value = result.toString();
            }

            // Call the `calculateAmount` function when the DOM is loaded
            document.addEventListener("DOMContentLoaded", function () {
                // The entire code is already encapsulated within this self-invoking function.
                // You can add any additional code that should run when the DOM is loaded here.
            });
        })();
    </script>

    </form>
    </div>
    
    </body>
</html>
