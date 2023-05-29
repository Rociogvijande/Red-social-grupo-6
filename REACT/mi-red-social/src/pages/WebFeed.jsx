import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import ColumnaUsuario from "../components/ColumnaUsuario/ColumnaUsuario";
import ColumnaSugeridos from "../components/UserFeed/ColumnaSugeridos";
import ColumnaPost from "../components/UserFeed/ColumnaPost";

function App() {
  return (
    <>
      <div className="row mt-3">
        <div className="col-lg-3 mb-4">
          <ColumnaUsuario />
        </div>
        <div className="col-lg-6">
          <ColumnaPost />
        </div>
        <div className="col-lg-3">
          <ColumnaSugeridos />
        </div>
      </div>
    </>
  );
}

export default App;
