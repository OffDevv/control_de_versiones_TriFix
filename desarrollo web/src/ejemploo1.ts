
// Importa los estilos de Bootstrap (haz esto en tu archivo principal, por ejemplo en index.ts o renderer.ts)
import 'bootstrap/dist/css/bootstrap.min.css';
// Ejemplo sencillo: crear un botón con clases de Bootstrap desde TypeScript
const boton = document.createElement('button');
boton.textContent = 'Redirigir a BBVA';
boton.className = 'btn btn-primary'; // Clases de Bootstrap para un botón azul

boton.onclick = () => {
	alert('¡Hola!');
};

document.body.appendChild(boton);
document.body.appendChild(boton);