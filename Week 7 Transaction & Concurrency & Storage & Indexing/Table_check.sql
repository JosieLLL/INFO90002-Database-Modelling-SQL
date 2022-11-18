SELECT *
FROM item
INNER JOIN saleitem ON item.itemID = saleitem.itemID
INNER JOIN sale ON saleitem.SaleID = sale.SaleID
INNER JOIN department ON sale.departmentID = department.departmentID

