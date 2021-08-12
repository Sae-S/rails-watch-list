import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Movie Watch List", "Make it your own!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
