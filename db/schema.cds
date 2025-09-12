// Wenn wir Daten von verschieden Apps in die glecihe Datenbank speichern werden, 
//dann hilft uns namespaces die Daten zu trennen
namespace sap.cap.productshop;

aspect carbonemission {
    emission : Integer;
    rating: String;
}

type stockcost {
    price : Integer;
    stock : Integer;
}

entity Product: carbonemission {
    key ID : Integer;
    name : String;
    category : String;
    stockcost : stockcost;
}

entity Supplier {
    key ID : UUID;
    name : String(100);
    city : String(100);
    phone : String(100);
}

/*
  Hinweis zur Anzeige im UI:

  In der SAP Fiori Launchpad / SAP Cockpit-Version der Anwendung 
  werden die Tabellen- und Filtereinstellungen bereits korrekt angezeigt,
  weil die zugrunde liegenden CDS-Views / Services von SAP bereits
  UI-Metadaten und Annotationen enthalten.

  In der lokalen CAP-Anwendung fehlen diese UI-Annotationen zunächst.
  Ohne Annotationen weiß die Fiori Elements-Anwendung nicht, welche
  Spalten angezeigt oder welche Felder als Filter genutzt werden sollen.
  Deshalb werden beim Drücken des "Start"-Buttons zunächst keine Daten angezeigt.

  Durch Hinzufügen der entsprechenden @UI.LineItem und @UI.SelectionField
  Annotationen zu den Entities kann das UI nun die Spalten und Filter
  korrekt generieren, sodass die Daten wie erwartet angezeigt werden.
*/
annotate Product with @(
    UI.LineItem: [
        { Value: ID },
        { Value: name },
        { Value: category },
        { Value: stockcost_stock },
        { Value: stockcost_price },
        { Value: emission },
        { Value: rating }
    ],
    UI.SelectionField: [
        { Value: name },
        { Value: category }
    ]
);