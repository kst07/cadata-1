import * as React from 'react';
import Button from '@mui/material/Button';

export default function MyButton(props) {
  const { label, type, bgColor, textColor, onClick } = props; // รับ onClick

  return (
    <Button
      type={type}
      variant={"contained"}
      className={"myButton"}
      sx={{
        backgroundColor: bgColor || '#734620',
        color: textColor || '#fff',
        fontFamily: "cursive",
        fontSize: "15px",
        borderRadius: "20px",
        '&:hover': {
          backgroundColor: '#643D1D',
        },
      }}
      onClick={onClick} // ✅ เพิ่ม onClick
    >
      {label}
    </Button>
  );
}
