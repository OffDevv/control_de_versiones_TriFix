// Importa Bootstrap CSS si no lo tienes global
import 'bootstrap/dist/css/bootstrap.min.css';
import './login.css';

document.addEventListener('DOMContentLoaded', () => {
  console.log('Login page loaded');
  const btn = document.getElementById('btnLogin');

  btn?.addEventListener('click', async () => {
    console.log('Login clickeado');
    // Si tienes window.appNav.toHome, descomenta la siguiente línea:
    // await window.appNav.toHome();
  });
});
window.addEventListener('DOMContentLoaded', () => {
  const loginBtn = document.getElementById('loginBtn');

loginBtn.addEventListener('click', () => {

  console.log('Boton de inicio de sesion clicado');
  window.appNav.toHome();
})
});