import { Box } from "@mui/material"

const MyMessage = ({ text, color }) => {
    return (
        <Box sx={{
            backgroundColor: color,
            color: '#FFFFFF',
            width: '90%',
            minHeight: '40px',  // ใช้ minHeight แทน height เพื่อให้ปรับขนาดตามเนื้อหา
            padding: '10px',    // ใช้ padding เพื่อให้มีระยะห่างรอบๆ ข้อความ
            position: 'absolute',
            top: '20px',
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            borderRadius: '8px' // เพิ่มมุมโค้งเพื่อความสวยงาม
        }}>
            {text}
        </Box>
    )
}

export default MyMessage
