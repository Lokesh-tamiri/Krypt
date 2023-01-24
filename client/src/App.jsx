import { Navbar, Loader, Transactions, Welcome, Services } from "./components";

const App = () => {
  return (
    <div className="min-h-screen">
      <div className="gradient-bg-welcome">
        <Navbar />
        <Welcome />
      </div>
      <Services />
      <Transactions />
      <Loader />
    </div>
  );
};

export default App;
