var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel')

router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  res.render('index', {
    novedades
  });
});



router.post('/', async (req, res, next) => {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'gabogaleano@gmail.com',
    subject: 'CONTACTO - PROYECTO FINAL',
    html: " - NOMBRE: " + nombre + " " + apellido + " - EMAIL: " + email + " - TELEFONO: " + telefono + " - MENSAJE: " + mensaje,
  };

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  })
  var info = await transporter.sendMail(obj);
  res.render('index', {
    message: 'Mensaje Enviado',
  });
});


module.exports = router;