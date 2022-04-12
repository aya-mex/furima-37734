function priceCalc () {

  const itemPrice = document.getElementById("item-price");
  itemPrice.addEventListener("input", () => {
    const itemPriceValue = itemPrice.value;
    const salesFee = document.getElementById("add-tax-price");
    salesFee.innerHTML = Math.floor(itemPriceValue * 0.1);
    const profit = document.getElementById("profit");
    salesFeeValue = itemPriceValue * 0.1;
    profit.innerHTML = Math.floor(itemPriceValue - salesFeeValue);
  })
}

window.addEventListener('load', priceCalc) 