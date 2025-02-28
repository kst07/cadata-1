import React from "react"
import Box from "@mui/material/Box"
import Drawer from "@mui/material/Drawer"
import AppBar from "@mui/material/AppBar"
import CssBaseline from "@mui/material/CssBaseline"
import Toolbar from "@mui/material/Toolbar"
import Typography from "@mui/material/Typography"
import List from "@mui/material/List"
import ListItem from "@mui/material/ListItem"
import ListItemButton from "@mui/material/ListItemButton"
import ListItemIcon from "@mui/material/ListItemIcon"
import ListItemText from "@mui/material/ListItemText"
import Collapse from "@mui/material/Collapse"
import ExpandLess from "@mui/icons-material/ExpandLess"
import ExpandMore from "@mui/icons-material/ExpandMore"
import CoffeeIcon from "@mui/icons-material/Coffee"
import HomeIcon from "@mui/icons-material/Home"
import MenuBookIcon from "@mui/icons-material/MenuBook"
import BarChartIcon from "@mui/icons-material/BarChart"
import InventoryIcon from "@mui/icons-material/Inventory"
import GroupIcon from "@mui/icons-material/Group"
import LogoutIcon from "@mui/icons-material/Logout"
import MenuIcon from "@mui/icons-material/Menu"
import Snackbar from "@mui/material/Snackbar"
import Alert from "@mui/material/Alert" // เพิ่ม Alert สำหรับแจ้งเตือน
import AxiosInstance from './AxiosInstance'
import { Link, useLocation, useNavigate } from "react-router-dom"

const drawerWidth = 240;

export default function Navbar(props) {
  const { content, username } = props
  const location = useLocation()
  const path = location.pathname
  const navigate = useNavigate()

  const [openSummary, setOpenSummary] = React.useState(false)
  const [openProducts, setOpenProducts] = React.useState(false)
  const [openDrawer, setOpenDrawer] = React.useState(true)
  const [openSnackbar, setOpenSnackbar] = React.useState(false)// สถานะ Snackbar
  const [snackbarMessage, setSnackbarMessage] = React.useState("") // ข้อความ Snackbar
  const [snackbarSeverity, setSnackbarSeverity] = React.useState("success") // ประเภท Snackbar (success, error, info, warning)

  const logoutUser = () => {
    AxiosInstance.post("api/logout/")
      .then(() => {
        localStorage.removeItem("Token")
        setSnackbarMessage("ล็อกเอาท์สำเร็จ") // ตั้งค่าข้อความแจ้งเตือน
        setSnackbarSeverity("success") // ตั้งค่าประเภทแจ้งเตือน
        setOpenSnackbar(true); // เปิด Snackbar
        setTimeout(() => {
          navigate('/')
        }, 700)
      })
      .catch((error) => {
        setSnackbarMessage("เกิดข้อผิดพลาดในการล็อกเอาท์")// ตั้งค่าข้อความแจ้งเตือน
        setSnackbarSeverity("error") // ตั้งค่าประเภทแจ้งเตือน
        setOpenSnackbar(true) // เปิด Snackbar
      })
  }

  const handleCloseSnackbar = () => {
    setOpenSnackbar(false); // ปิด Snackbar
  }

  const toggleDrawer = () => {
    setOpenDrawer(!openDrawer)
  }

  return (
    <Box sx={{ display: "flex" }}>
      <CssBaseline />
      <AppBar
        position="fixed"
        sx={{
          zIndex: (theme) => theme.zIndex.drawer + 1,
          background: "linear-gradient(to right, #4E342E, #6D4C41, #8D6E63)",
          boxShadow: "0px 5px 8px rgba(0, 0, 0, 0.5)",
        }}
      >
        <Toolbar>
          <MenuIcon sx={{ mr: 2, cursor: "pointer" }} onClick={toggleDrawer} />
          <Typography variant="h6" noWrap component="div"
            sx={{ display: "flex", alignItems: "center", fontFamily: "Pacifico, cursive" }}
          >
            <CoffeeIcon sx={{ marginRight: 2 }} /> Coffee Admin
          </Typography>
          <Box sx={{ flexGrow: 1 }} />
          <Typography variant="body1" sx={{ mr: 2 }}>
            {username}
          </Typography>
          <LogoutIcon sx={{ cursor: "pointer" }} onClick={logoutUser} />
        </Toolbar>
      </AppBar>

      {/* Snackbar สำหรับแจ้งเตือน */}
      <Snackbar
        open={openSnackbar}
        autoHideDuration={6000}
        onClose={handleCloseSnackbar}
        anchorOrigin={{ vertical: "top", horizontal: "center" }} // กำหนดตำแหน่งตรงกลางด้านบน
      >
        <Alert
          onClose={handleCloseSnackbar}
          severity={snackbarSeverity} // กำหนดประเภทแจ้งเตือน (success, error, info, warning)
          sx={{ width: "100%" }}
        >
          {snackbarMessage}
        </Alert>
      </Snackbar>

      <Drawer
        variant="persistent"
        anchor="left"
        open={openDrawer}
        sx={{
          width: drawerWidth,
          flexShrink: 0,
          transition: "width 0.3s",
          "& .MuiDrawer-paper": {
            width: drawerWidth,
            boxSizing: "border-box",
            background: "linear-gradient(to right, #4E342E, #6D4C41, #8D6E63)",
            color: "#FFFFFF",
            fontSize: "16px",
            boxShadow: "0px 4px 6px rgba(0, 0, 0, 0.4)",
            borderRadius: "0 12px 12px 0",
            overflow: "hidden",
          },
          "& .MuiListItemButton-root": {
            "&.Mui-selected": {
              backgroundColor: "#6D4C41",
              color: "#FFFFFF",
              boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.3)",
              borderRadius: "12px",
              "& .MuiListItemIcon-root": {
                color: "#FFFFFF",
              },
            },
            "&:hover": {
              backgroundColor: "#8D6E63",
              color: "#FFFFFF",
              boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
              borderRadius: "10px",
            },
          },
        }}
      >
        <Toolbar />
        <Box sx={{ overflow: "auto" }}>
          <List>
            {/* Home */}
            <ListItem disablePadding>
              <ListItemButton
                component={Link}
                to="/home"
                selected={"/home" === path}
                sx={{
                  "&:hover": {
                    backgroundColor: "#8D6E69",
                    boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                    borderRadius: "10px",
                  },
                  "&.Mui-selected": {
                    backgroundColor: "#6d4c41",
                    color: "white",
                    boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                    borderRadius: "10px",
                  },
                  transition: "all 0.3s ease-in-out",
                  margin: "2px 0",
                }}
              >
                <ListItemIcon>
                  <HomeIcon sx={{ color: "/home" === path ? "white" : "#6d4c41" }} />
                </ListItemIcon>
                <ListItemText primary="หน้าแรก" />
              </ListItemButton>
            </ListItem>

            {/* Products */}
            <ListItemButton onClick={() => setOpenProducts(!openProducts)}>
              <ListItemIcon>
                <MenuBookIcon sx={{ color: "#6d4c41" }} />
              </ListItemIcon>
              <ListItemText primary="สินค้า" />
              {openProducts ? <ExpandLess /> : <ExpandMore />}
            </ListItemButton>
            <Collapse in={openProducts} timeout="auto" unmountOnExit>
              <List component="div" disablePadding>
                <ListItemButton
                  component={Link}
                  to="/ManageMenu"
                  selected={"/ManageMenu" === path}
                  sx={{
                    pl: 14,
                    "&:hover": {
                      backgroundColor: "#8D6E69",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                      borderRadius: "10px",
                    },
                    "&.Mui-selected": {
                      backgroundColor: "#6d4c41",
                      color: "white",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                      borderRadius: "10px",
                    },
                    transition: "all 0.2s ease-in-out",
                    margin: "2px 0",
                  }}
                >
                  <ListItemText primary="เมนู" />
                </ListItemButton>

                <ListItemButton
                  component={Link}
                  to="/inventory"
                  selected={"/inventory" === path}
                  sx={{
                    pl: 14,
                    "&:hover": {
                      backgroundColor: "#8D6E69",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                      borderRadius: "10px",
                    },
                    "&.Mui-selected": {
                      backgroundColor: "#6d4c41",
                      color: "white",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                      borderRadius: "10px",
                    },
                    transition: "all 0.3s ease-in-out",
                    margin: "2px 0",
                  }}
                >
                  <ListItemText primary="สินค้าคลัง" />
                </ListItemButton>
              </List>
            </Collapse>

            {/* Summary */}
            <ListItemButton onClick={() => setOpenSummary(!openSummary)}>
              <ListItemIcon>
                <BarChartIcon sx={{ color: "#6d4c41" }} />
              </ListItemIcon>
              <ListItemText primary="สรุปข้อมูล" />
              {openSummary ? <ExpandLess /> : <ExpandMore />}
            </ListItemButton>
            <Collapse in={openSummary} timeout="auto" unmountOnExit>
              <List component="div" disablePadding>
                <ListItemButton
                  component={Link}
                  to="/salesSummary"
                  selected={"/salesSummary" === path}
                  sx={{
                    pl: 14,
                    "&:hover": {
                      backgroundColor: "#8D6E69",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                      borderRadius: "10px",
                    },
                    "&.Mui-selected": {
                      backgroundColor: "#6d4c41",
                      color: "white",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                      borderRadius: "10px",
                    },
                    transition: "all 0.3s ease-in-out",
                    margin: "2px 0",
                  }}
                >
                  <ListItemText primary="สรุปยอดขาย" />
                </ListItemButton>
                <ListItemButton
                  component={Link}
                  to="/customerSummary"
                  selected={"/customerSummary" === path}
                  sx={{
                    pl: 14,
                    "&:hover": {
                      backgroundColor: "#8D6E69",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                      borderRadius: "10px",
                    },
                    "&.Mui-selected": {
                      backgroundColor: "#6d4c41",
                      color: "white",
                      boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                      borderRadius: "10px",
                    },
                    transition: "all 0.3s ease-in-out",
                    margin: "2px 0",
                  }}
                >
                  <ListItemText primary="สรุปลูกค้า" />
                </ListItemButton>
              </List>
            </Collapse>

            {/* Customers */}
            <ListItem disablePadding>
              <ListItemButton
                component={Link}
                to="/customers"
                selected={"/customers" === path}
                sx={{
                  "&:hover": {
                    backgroundColor: "#8D6E69",
                    boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.2)",
                    borderRadius: "10px",
                  },
                  "&.Mui-selected": {
                    backgroundColor: "#6d4c41",
                    color: "white",
                    boxShadow: "0px 4px 10px rgba(0, 0, 0, 0.3)",
                    borderRadius: "10px",
                  },
                  transition: "all 0.3s ease-in-out",
                  margin: "2px 0",
                }}
              >
                <ListItemIcon>
                  <GroupIcon sx={{ color: "/customers" === path ? "white" : "#6d4c41" }} />
                </ListItemIcon>
                <ListItemText primary="ลูกค้า" />
              </ListItemButton>
            </ListItem>
          </List>
        </Box>
      </Drawer>

      {/* Main Content */}
      <Box
        component="main"
        sx={{
          width: '100%',
          minHeight: '100vh', // ทำให้กรอบเต็มความสูงของหน้าจอ
          display: 'flex',
          flexDirection: 'column',
          justifyContent: 'center', // จัดให้อยู่กลางแนวนอน
          alignItems: 'center', // จัดให้อยู่กลางแนวตั้ง
          padding: '20px', // เพิ่มระยะห่างจากขอบ
          boxSizing: 'border-box',
        }}
      >
        <Toolbar />
        {content}
      </Box>
    </Box>
  )
}