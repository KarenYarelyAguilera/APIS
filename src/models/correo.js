import nodemailer from "nodemailer";

const enviarMail = async (mail) => {
  const config = {
    host: "smtp.gmail.com",
    port: 587,
    auth: {
      user: "jaredmoisesalgadortiz@gmail.com",
      pass: "jqwvepwixhbupffm",
    },
  };

  const mensaje = {
    from: "jaredmoisesalgadortiz@gmail.com",
    to: mail.para,
    subject: mail.titulo,
    text: mail.texto,
  };

  const transport = nodemailer.createTransport(config);
  const info = await transport.sendMail(mensaje);
};

export const MailMod = {
    sendMail: enviarMail,
  };
