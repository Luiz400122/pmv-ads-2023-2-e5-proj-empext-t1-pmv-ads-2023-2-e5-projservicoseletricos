import React from "react";
import { Container, Menu, MenuItem } from "./styles";
import { useNavigate } from "react-router";

export default function MenuBar() {
  const navigate = useNavigate();

  const handleMenuItemClick = (path) => {
    navigate(path);
  };

  return (
    <Container>
      <Menu>
        <MenuItem onClick={() => handleMenuItemClick("/home")}>Início</MenuItem>
        <MenuItem onClick={() => handleMenuItemClick("/produtos")}>
          Produtos 
        </MenuItem>
          <MenuItem onClick={() => handleMenuItemClick("/sobre")}>Sobre</MenuItem> 
          <MenuItem onClick={() => handleMenuItemClick("/contato")}>Contato</MenuItem>
          <MenuItem onClick={() => handleMenuItemClick("/login")}>Login</MenuItem>
      </Menu>
    </Container>
  );
}
