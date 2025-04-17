import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router-dom";

import Sidebar from "./components/Sidebar";
import Header from "./components/header";
import Dashboard from "./pages/Dashboard";
import Students from "./pages/Students";
import Teachers from "./pages/Teachers";

export default function App() {

  return (
    <Router>
      <div className="flex">
        <Sidebar />
        <div className="flex flex-col flex-1 overflow-auto">
          <Header />
          <div className="flex-grow bg-gray-50 min-h-screen">
            <Routes>
              <Route path="/" element={<Dashboard />} />
              <Route path="/students" element={<Students />} />
              <Route path="/teachers" element={<Teachers />} />
            </Routes>
          </div>
        </div>
      </div>
    </Router>
  );
}
