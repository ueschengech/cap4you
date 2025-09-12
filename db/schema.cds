// Wenn wir Daten von verschieden Apps in die glecihe Datenbank speichern werden, 
//dann hilft uns namespaces die Daten zu trennen
namespace sap.cap.productshop;

entity Product
{
    key ID : Integer;
    name : String;
    stock : Integer;
    price : Integer;
    category : Integer;
}

entity Supplier
{
    key ID : UUID;
    name : String(100);
    city : String(100);
    phone : String(100);
}
