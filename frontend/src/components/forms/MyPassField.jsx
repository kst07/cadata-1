import * as React from "react";
import { IconButton, OutlinedInput, InputLabel, InputAdornment, FormControl } from "@mui/material";
import { Visibility, VisibilityOff } from "@mui/icons-material";
import { Controller } from "react-hook-form";

const MyPassField = ({ label, name, control }) => {
  const [showPassword, setShowPassword] = React.useState(false);

  const handleClickShowPassword = () => setShowPassword((show) => !show);

  const handleMouseDownPassword = (event) => {
    event.preventDefault();
  };

  const cuStyles = {
    fontFamily: "cursive",
    fontSize: "16px",
    color: "#6a4f4b",
  };

  return (
    <Controller
      name={name}
      control={control}
      defaultValue="" // Ensure default value is set for controlled input
      render={({ field }) => (
        <FormControl variant="outlined" fullWidth margin="normal">
          <InputLabel htmlFor={name} sx={cuStyles}>
            {label}
          </InputLabel>
          <OutlinedInput
            {...field} // ✅ ใช้ field จาก react-hook-form
            id={name}
            type={showPassword ? "text" : "password"}
            value={field.value || ""} // Ensure controlled behavior by providing value
            endAdornment={
              <InputAdornment position="end">
                <IconButton
                  aria-label={showPassword ? "hide password" : "show password"}
                  onClick={handleClickShowPassword}
                  onMouseDown={handleMouseDownPassword}
                  edge="end"
                >
                  {showPassword ? <VisibilityOff /> : <Visibility />}
                </IconButton>
              </InputAdornment>
            }
            label={label}
            sx={cuStyles}
          />
        </FormControl>
      )}
    />
  );
};

export default MyPassField;
