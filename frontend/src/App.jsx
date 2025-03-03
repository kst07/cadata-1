import { Routes, Route, useLocation } from 'react-router-dom';
import Login from './components/Login';
import 'bootstrap/dist/css/bootstrap.min.css';
import Home from './components/Home';
import Navbar from './components/Navbar';
import ManageMenu from './components/ManageMenu';
import Inventory from './components/Inventory';
import SalesSummary from './components/SalesSummary';


function App() {
  const location = useLocation();
  const noNavbar = location.pathname === '/';

  return (
    <>
      {
        noNavbar ?
        <Routes>
            <Route path="/" element={<Login/>}/>  
        </Routes>

        :

        <Navbar
        content={
          <Routes>
                <Route path="/home" element={<Home/>}/>
  
                <Route path="/manageMenu" element={<ManageMenu/>}/>
                <Route path="/inventory" element={<Inventory/>}/>
                <Route path="/salesSummary" element={<SalesSummary/>}/>
          </Routes>

        }
      />
      }
    </>
  );
}

export default App;
