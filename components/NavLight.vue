<template>
    <div>
        <nav class="navbar" id="navbar">
            <div class="container relative flex flex-wrap items-center justify-between">
                <a class="navbar-brand md:me-8" href="/">
                    <span class="inline-block dark:hidden">
                        <img src="../assets/images/logo.webp" class="l-dark" alt="Logo cabañas dos venados">
                        <img src="../assets/images/logo.webp" class="l-light" alt="Logo cabañas dos venados">
                    </span>
                    <img src="../assets/images/logo.webp" class="hidden dark:inline-block" alt="Logo cabañas dos venados">
                </a>

                <div class="nav-icons flex items-center lg_992:order-2 ms-auto md:ms-8">
                    <div class="relative">
                        <input type="checkbox" class="checkbox opacity-0 absolute" id="chk" @change="changeMode($event)">
                        <label class="label bg-slate-900 dark:bg-white shadow dark:shadow-gray-800 cursor-pointer rounded-full flex justify-between items-center p-1 w-14 h-8" for="chk">
                            <i data-feather="moon" class="w-[18px] h-[18px] text-yellow-500"></i>
                            <i data-feather="sun" class="w-[18px] h-[18px] text-yellow-500"></i>
                            <span class="ball bg-white dark:bg-slate-900 rounded-full absolute top-[2px] left-[2px] size-7"></span>
                        </label>
                    </div>
                    <button data-collapse="menu-collapse" type="button" class="collapse-btn inline-flex items-center ms-3 text-dark dark:text-white lg_992:hidden" aria-controls="menu-collapse" aria-expanded="false" @click="handler" >
                        <span class="sr-only">Navigation Menu</span>
                        <i class="mdi mdi-menu text-[24px]"></i>
                    </button>
                </div>

                <div class="navigation lg_992:order-1 lg_992:flex !ms-auto" :class="{hidden: !toggle}" id="menu-collapse" >
                    <ul class="navbar-nav nav-light sidebar-nav" id="navbar-navlist">
                        <li class="nav-item ms-0 active home">
                            <a class="nav-link" href="#home">Home</a>
                        </li>
                        <li class="nav-item ms-0 services">
                            <a class="nav-link" href="#servicios">Servicios</a>
                        </li>
                        <li class="nav-item ms-0 blog">
                            <a class="nav-link" href="#cabanias">Cabañas</a>
                        </li>
                        <li class="nav-item ms-0 contact">
                            <a class="nav-link" href="#contact">Ubicación</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
import feather from 'feather-icons';

export default {
  data() {
    return { 
      toggle: false,
      scroll: true,
      // 1. Se inicializan vacíos o nulos. No se tocan elementos del DOM aquí.
      sections: null,
      navLi: null,
      current: "",
      sectionTop: null,
    }
  },

  mounted() {
    // 2. El hook mounted() se ejecuta SOLO en el navegador.
    // Ahora es seguro acceder a 'document' y 'window'.

    // 3. Asignamos los elementos del DOM aquí.
    this.sections = document.querySelectorAll("section");
    this.navLi = document.querySelectorAll("nav .container .navigation ul li");

    // 4. Añadimos los listeners de eventos aquí.
    window.addEventListener('scroll', this.handleScroll);
    window.addEventListener('scroll', this.onscroll);

     feather.replace();
  },

  beforeUnmount() {
    // Es buena práctica limpiar los listeners cuando el componente se destruye.
    window.removeEventListener('scroll', this.handleScroll);
    window.removeEventListener('scroll', this.onscroll);
  },
    
  methods: {
    handler: function() {
      this.toggle = !this.toggle;
    },

    handleScroll (event) {
        const navbar = document.getElementById("navbar");
        if (
            document.body.scrollTop >= 50 ||
            document.documentElement.scrollTop >= 50
        ) {
            navbar.classList.add("is-sticky");
        } else {
            navbar.classList.remove("is-sticky");
        }
    },

    onscroll () {
        this.sections.forEach((section) => {
            this.sectionTop = section.offsetTop;
            if (window.pageYOffset >= this.sectionTop - 60) {
              this.current = section.getAttribute("id"); 
            }
        });
        this.navLi.forEach((li) => {
            li.classList.remove("active");
            if (li.classList.contains(this.current)) {
                li.classList.add("active");
            }
        });
    },

    changeMode(event) {
        const htmlTag = document.getElementsByTagName("HTML")[0];
            if (htmlTag.classList.contains("dark")) {
                htmlTag.classList.remove("dark");
            } else {
                htmlTag.classList.add("dark");
            }
        }
    },

}
</script>