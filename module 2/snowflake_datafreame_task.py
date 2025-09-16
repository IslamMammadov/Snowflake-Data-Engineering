import snowflake.snowpark as snowpark
"""
Have your Python Worksheet do five things:
Import snowflake.snowpark as snowpark
Define main (look at the code for this video to see how to do this)
Inside main, set df_table to equal session.table(“TASTY_BYTES.RAW_POS.MENU”)
Inside main, use the show method on df_table
Inside main, return df_table
You should have five lines of code total.
When you run this, what are the first three column names you see in the Results?"""

def main(session: snowpark.Session): 
    df_table = session.table("TASTY_BYTES.RAW_POS.MENU")
    df_table.show()
    return df_table


"""Building on the last question, now run the same code you just ran, but remove the line where you set df_table to equal session.table(“TASTY_BYTES.RAW_POS.MENU”).
Instead of that line, add a line where you set df_table to equal session.sql(“SELECT * FROM TASTY_BYTES.RAW_POS.MENU LIMIT 10”).
When you run this, what is the value you see for “MENU_ITEM_NAME” in the row corresponding to the MENU_ITEM of 10007?"""
def main(session: snowpark.Session): 
    #df_table = session.table("TASTY_BYTES.RAW_POS.MENU")
    df_table = session.sql("SELECT * FROM TASTY_BYTES.RAW_POS.MENU LIMIT 10")
    df_table.show()
    return df_table

"""
you use df_table.filter and COL to only pull out those rows where TRUCK_BRAND_NAME equals “The Mac Shack”,
When you run this worksheet, how many rows do you see in the result?
"""
def main(session: snowpark.Session): 
    df_table = session.table("TASTY_BYTES.RAW_POS.MENU")
    df_table = df_table.filter(col("TRUCK_BRAND_NAME")=="The Mac Shack")
    #df_table = session.sql("SELECT * FROM TASTY_BYTES.RAW_POS.MENU LIMIT 10")
    df_table.show()
    return df_table


"""
Question 4
Building on the last question, adjust the line where you use df_table.filter by adding the .select method and COL to the end of that line to only pull two columns: MENU_ITEM_NAME and ITEM_CATEGORY. (So now you’re pulling the “The Mac Shack” rows and those two columns.)
When you run the worksheet, what are the two different kinds of item categories you see in the results?
"""

def main(session: snowpark.Session): 
    df_table = session.table("TASTY_BYTES.RAW_POS.MENU")
    df_table = df_table.filter(col("TRUCK_BRAND_NAME")=="The Mac Shack"
                              ).select(col("MENU_ITEM_NAME"),
                                       col("ITEM_CATEGORY")
    )
    #df_table = session.sql("SELECT * FROM TASTY_BYTES.RAW_POS.MENU LIMIT 10")
    df_table.show()
    return df_table