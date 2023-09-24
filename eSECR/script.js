
    document.addEventListener("DOMContentLoaded", function () {
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
    });