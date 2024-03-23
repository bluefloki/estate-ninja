/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./templates/**/*.jinja", "./static/src/**/*.js"],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
  daisyui: {
    themes: [
      {
        light: {
          ...require("daisyui/src/theming/themes")["light"],
          primary: "#2F52E0",
        },
      },
    ],
  },
};
