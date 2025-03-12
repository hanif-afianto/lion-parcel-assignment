*** Variables ***
${CART_BADGE}           xpath=//span[@class='shopping_cart_badge']
${PRODUCT_BUTTON_TMPL}  xpath=//div[text()="{product_name}"]/ancestor::div[@class="inventory_item_description"]//button[contains(@class, "btn_inventory")]