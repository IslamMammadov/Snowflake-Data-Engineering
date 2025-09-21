--Use the Snowflake Cortex Complete function and the “mistral-7b” model to answer the question: “What kind of literature was Marianne Moore known for?”
SELECT Snowflake.Cortex.Complete('mistral-7b','What kind of literature was Marianne Moore known for')

/*Use the Snowflake Cortex Complete function with the “mistral-7b” model. 
Ask Snowflake Cortex Complete to “Describe this food: ” and then apply that to the menu_item_name for five rows of the table TASTY_BYTES.RAW_POS.MENU.*/
SELECT Snowflake.Cortex.Complete(
'mistral-7b',
CONCAT('Describe this food: ',menu_item_name))
FROM TASTY_BYTES.RAW_POS.MENU
LIMIT 5