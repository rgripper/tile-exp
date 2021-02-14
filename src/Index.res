type document
@send external getElementById: (document, string) => Dom.element = "getElementById"
@val external doc: document = "document"

ReactDOM.render(<World />, getElementById(doc, "root"))
