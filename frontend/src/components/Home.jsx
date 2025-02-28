import React from "react"
import { useState, useEffect } from "react"
import Box from "@mui/material/Box"
import Typography from "@mui/material/Typography"
import Grid from "@mui/material/Grid"
import Paper from "@mui/material/Paper"
import Button from "@mui/material/Button"
import BarChartIcon from "@mui/icons-material/BarChart"
import InventoryIcon from "@mui/icons-material/Inventory"
import GroupIcon from "@mui/icons-material/Group"
import CoffeeIcon from "@mui/icons-material/Coffee"
import { createTheme, ThemeProvider } from "@mui/material/styles"
import { motion } from "framer-motion"
import { Link } from "react-router-dom"


// กำหนดธีม
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
  const path = location.pathname
  const {content,username} = props
  const [sales, setSales] = useState(0)
  const [inventory, setInventory] = useState(0)
  const [customers, setCustomers] = useState(0)

  // ดึงข้อมูล (ตัวอย่างสมมติ)
  useEffect(() => {
    const fetchData = async () => {
      // สมมติว่าดึงข้อมูลจาก API
      const data = {
        sales: 200000,
        inventory: 50,
        customers: 2,
      };
      setSales(data.sales);
      setInventory(data.inventory);
      setCustomers(data.customers);
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
          padding: "20px",
          background: "linear-gradient(to bottom, #ffffff, #f7f7f7)", // ไล่สีพื้นหลัง
          borderRadius: "12px",
          boxShadow: "0px 8px 15px rgba(0, 0, 0, 0.2)", // เงาสำหรับเพิ่มมิติ
          width: "100%",
          minHeight: "80vh",
        }}
      >
        <Typography
          variant="h4"
          sx={{
            fontWeight: "bold",
            color: "#4E342E",
            marginBottom: "20px",
          }}
        >
          Welcome to Coffee Admin Dashboard
        </Typography>

        <Grid container spacing={3} justifyContent="center">
          {/* Sales Summary */}
          <Grid item xs={12} sm={6} md={4}>
            <Paper
              component={motion.div}
              whileHover={{ scale: 1.05 }}
              sx={{
                padding: "20px",
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                backgroundColor: "#6D4C41",
                color: "#ffffff",
                borderRadius: "12px",
                boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.3)",
              }}
            >
              <BarChartIcon sx={{ fontSize: "40px" }} />
              <Typography variant="h6">ยอดขายวันนี้</Typography>
              <Typography variant="h4">฿{sales.toLocaleString()}</Typography>
            </Paper>
          </Grid>

          {/* Inventory */}
          <Grid item xs={12} sm={6} md={4}>
            <Paper
              component={motion.div}
              whileHover={{ scale: 1.05 }}
              sx={{
                padding: "20px",
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                backgroundColor: "#8D6E63",
                color: "#ffffff",
                borderRadius: "12px",
                boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.3)",
              }}
            >
              <InventoryIcon sx={{ fontSize: "40px" }} />
              <Typography variant="h6">สินค้าคงคลัง</Typography>
              <Typography variant="h4">{inventory} รายการ</Typography>
            </Paper>
          </Grid>

          {/* Customers */}
          <Grid item xs={12} sm={6} md={4}>
            <Paper
              component={motion.div}
              whileHover={{ scale: 1.05 }}
              sx={{
                padding: "20px",
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                backgroundColor: "#4E342E",
                color: "#ffffff",
                borderRadius: "12px",
                boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.3)",
              }}
            >
              <GroupIcon sx={{ fontSize: "40px" }} />
              <Typography variant="h6">ลูกค้าทั้งหมด</Typography>
              <Typography variant="h4">{customers} คน</Typography>
            </Paper>
          </Grid>
        </Grid>

        <Box sx={{ marginTop: "20px", textAlign: "center" }}>
          <CoffeeIcon sx={{ fontSize: "50px", color: "#6D4C41" }} />
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
            selected={"/inventory" === path}
            sx={{
              backgroundColor: "#6D4C41",
              color: "#ffffff",
              marginTop: "20px",
              "&:hover": { backgroundColor: "#4E342E" },
            }}

            
          >
            จัดการสินค้า
          </Button>
        </Box>
      </Box>
    </ThemeProvider>
  )
}

export default Home
