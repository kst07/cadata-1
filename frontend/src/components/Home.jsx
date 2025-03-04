import React, { useState, useEffect } from "react";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Grid from "@mui/material/Grid";
import Paper from "@mui/material/Paper";
import Button from "@mui/material/Button";
import BarChartIcon from "@mui/icons-material/BarChart";
import InventoryIcon from "@mui/icons-material/Inventory";
import GroupIcon from "@mui/icons-material/Group";
import CoffeeIcon from "@mui/icons-material/Coffee";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";
import AxiosInstance from "./AxiosInstance";

const theme = createTheme({
  typography: {
    fontFamily: "Pacifico, cursive",
  },
  palette: {
    primary: { main: "#6D4C41" },
    secondary: { main: "#8D6E63" },
  },
});

const Home = (props) => {
  const path = location.pathname;
  const { content, username } = props;
  const [sales, setSales] = useState(0);
  const [inventory, setInventory] = useState(0);
  const [orders, setOrders] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const salesResponse = await AxiosInstance.get("/sales/");
        const totalSales = salesResponse.data.reduce(
          (sum, sale) => sum + parseFloat(sale.total_price || 0),
          0
        );
        setSales(totalSales);

        const inventoryResponse = await AxiosInstance.get("/products/");
        setInventory(inventoryResponse.data.length);

        const ordersResponse = await AxiosInstance.get("/sales");
        setOrders(ordersResponse.data.length);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    fetchData();
  }, []);

  return (
    <ThemeProvider theme={theme}>
      <Box
        component={motion.div}
        initial={{ opacity: 0, y: -50 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        sx={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          padding: "110px",
          background: "linear-gradient(to bottom, #FFFFFF, #FBE9E7)",
          borderRadius: "20px",
          boxShadow: "0px 10px 25px rgba(0, 0, 0, 0.3)",
          width: "100%",
          minHeight: "80vh",
          position: "relative",
          textAlign: "center",
          margin: '0px 20px 0px 60px',
        }}
      >
        <Typography
          variant="h4"
          sx={{
            fontWeight: "bold",
            color: "#4E342E",
            marginBottom: "20px",
            textShadow: "2px 2px 4px rgba(0, 0, 0, 0.2)",
          }}
        >
          Welcome to Coffee Admin Dashboard
        </Typography>

        <Grid container spacing={3} justifyContent="center">
          {[{
            title: "ยอดขายทั้งหมด",
            value: `${sales.toLocaleString()}฿`,
            icon: <BarChartIcon sx={{ fontSize: "40px" }} />, 
          }, {
            title: "สินค้าคงคลัง",
            value: `${inventory} รายการ`,
            icon: <InventoryIcon sx={{ fontSize: "40px" }} />, 
          }, {
            title: "สั่งซื้อทั้งหมด",
            value: `${orders} รายการ`,
            icon: <GroupIcon sx={{ fontSize: "40px" }} />, 
          }].map((item, index) => (
            <Grid item xs={12} sm={6} md={4} key={index}>
              <Paper
                component={motion.div}
                whileHover={{ scale: 1.08 }}
                sx={{
                  padding: "20px",
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "space-between",
                  background: "linear-gradient(to right, #6D4C41, #8D6E63)",
                  border: "1px solid #6D4C41",
                  borderRadius: "15px",
                  boxShadow: "0px 8px 20px rgba(0, 0, 0, 0.3)",
                  color: "#ffffff",
                  cursor: "pointer",
                  transition: "all 0.3s ease-in-out",
                  margin: '2px 2px 2px 60px',
                  width: "100%",
                  height: "100%",
                }}
              >
                {item.icon}
                <div>
                  <Typography variant="h6">{item.title}</Typography>
                  <Typography variant="h4">{item.value}</Typography>
                </div>
              </Paper>
            </Grid>
          ))}
        </Grid>

        <Box sx={{ marginTop: "20px", textAlign: "center" }}>
          <CoffeeIcon sx={{ fontSize: "60px", color: "#6D4C41" }} />
          <Typography
            variant="h6"
            sx={{ marginTop: "10px", color: "#4E342E", fontWeight: "bold" }}
          >
            Enjoy managing your coffee shop!
          </Typography>

          <Button
            variant="contained"
            size="large"
            component={Link}
            to="/inventory"
            sx={{
              background: "linear-gradient(to right, #6D4C41, #4E342E)",
              color: "#ffffff",
              textTransform: "none",
              fontWeight: "bold",
              fontSize: "16px",
              marginTop: "20px",
              padding: "10px 20px",
              borderRadius: "12px",
              boxShadow: "0px 5px 15px rgba(0, 0, 0, 0.2)",
              "&:hover": { background: "#4E342E" },
            }}
          >
            สินค้า
          </Button>
        </Box>
      </Box>
    </ThemeProvider>
  );
};

export default Home;
