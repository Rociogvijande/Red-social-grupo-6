// importar los componentes de react-router-dom
import { BrowserRouter, Route, Link } from "react-router-dom";

import React from 'react';
import NavBar from './components/Navbar';
import Footer from './components/Footer';
import LoginForm from './components/LoginForm';
import ColumnaSugeridos from './components/ColumnaSugeridos';
import RegistroForm from './components/RegistroForm';
import 'bootstrap/dist/css/bootstrap.min.css';




function App() {
  return (
    <div>
      <NavBar />
      {/* <LoginForm/> */}
      <ColumnaSugeridos/>
      <RegistroForm/>
      <Footer />

    </div>

  );
}


export default App;
