<template>
    <footer class="footer bg-dark-footer relative text-gray-200 dark:text-gray-200">
        <div class="container relative py-12">
            <div class="grid md:grid-cols-12 grid-cols-1 gap-6 items-start">

                <div class="lg:col-span-4 md:col-span-12">
                    <a href="#" class="text-[22px] focus:outline-none">
                        <img src="../assets/images/logo.webp" alt="Logo Cabañas Dos Venados">
                    </a>
                    <ul class="list-none mt-6 space-y-3">
                        <li class="inline-flex items-center">
                            <i data-feather="map-pin" class="size-4 me-3 text-teal-500"></i>
                            <span>Av. Dos Venados y arroyo El Tigre (al 1.100), Merlo, San Luis.</span>
                        </li>
                        <li class="inline-flex items-center">
                            <i data-feather="phone" class="size-4 me-3 text-teal-500"></i>
                            <a href="tel:+5492664007328" class="hover:text-teal-500">+54 9 266 400 7328</a>
                        </li>
                        <li class="inline-flex items-center">
                            <i data-feather="mail" class="size-4 me-3 text-teal-500"></i>
                            <a href="mailto:dosvenadosmerlo@yahoo.com" class="hover:text-teal-500">dosvenadosmerlo@yahoo.com</a>
                        </li>
                    </ul>
                </div>

                <div class="lg:col-span-2 md:col-span-4">
                    <h5 class="tracking-wide text-gray-100 font-semibold">Navegación</h5>
                    <ul class="list-none footer-list mt-6 space-y-2">
                        <li><a href="#" class="text-gray-300 hover:text-gray-400 inline-flex items-center"><i data-feather="chevron-right" class="size-4 me-2"></i> Home</a></li>
                        <li><a href="#" class="text-gray-300 hover:text-gray-400 inline-flex items-center"><i data-feather="chevron-right" class="size-4 me-2"></i> Cabañas</a></li>
                        <li><a href="#" class="text-gray-300 hover:text-gray-400 inline-flex items-center"><i data-feather="chevron-right" class="size-4 me-2"></i> Nosotros</a></li>
                    </ul>
                </div>

                <div class="lg:col-span-3 md:col-span-4">
                    <h5 class="tracking-wide text-gray-100 font-semibold">Microclima</h5>
                    <p class="mt-6 text-gray-300">
                        Gracias a su ubicación privilegiada en la Sierra de los Comechingones, Villa de Merlo es reconocida como la Capital del "Tercer Microclima del Mundo".
                    </p>
                </div>
                
                <div class="lg:col-span-3 md:col-span-4">
                     <h5 class="tracking-wide text-gray-100 font-semibold">Redes Sociales</h5>
                     <ul class="list-none mt-6">
                        <li class="inline"><a href="https://www.facebook.com/profile.php?id=100008627738288" target="_blank" class="size-8 inline-flex justify-center items-center border border-gray-800 rounded-md hover:border-teal-500 hover:bg-teal-500"><i data-feather="facebook" class="size-4"></i></a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="py-[30px] px-0 border-t border-slate-800">
            <div class="container relative text-center">
                <p class="mb-0">© {{date}} Dos Venados. Diseñado por <a href="#" class="text-reset">DBIT</a>.</p>
            </div>
        </div>
    </footer>
</template>

<script>
 import feather from 'feather-icons'

export default {
    name: 'FooterComponent',
    data(){
        return{
            date: new Date().getFullYear()
        }
    },
    mounted() {
        // Usamos nextTick para asegurar que el DOM esté listo antes de reemplazar los íconos
        this.$nextTick(() => {
            feather.replace();
        });
    },
    updated() {
        // También es buena idea ejecutarlo en 'updated' por si el contenido cambia dinámicamente
        this.$nextTick(() => {
            feather.replace();
        });
    }
}
</script>