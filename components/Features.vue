<template>
    <section class="relative md:py-24 py-16 bg-slate-50 dark:bg-slate-800" id="servicios">
        <div class="container relative">
            <div class="grid grid-cols-1 pb-6 text-center">
                <h3 class="font-semibold text-2xl leading-normal mb-4">Nuestro complejo</h3>

                <p class="text-slate-400 max-w-xl mx-auto">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>
            </div><!--end grid-->

            <div class="grid lg:grid-cols-4 md:grid-cols-2 sm:grid-cols-2 grid-cols-1 gap-6 mt-6">
            
                <div v-for="item in servicesData" :key="item.id" class="group rounded-md shadow dark:shadow-gray-700 relative bg-white dark:bg-slate-900 p-6 overflow-hidden h-fit salto-linea">
                    <div class="flex items-center justify-center size-14 -rotate-45 bg-gradient-to-r from-transparent to-teal-500/10 text-teal-500 text-center rounded-full group-hover:bg-teal-500/10 duration-500">
                        <i :data-feather="item.icon" class="size-6 rotate-45"></i>
                    </div>

                    <div class="content mt-6 relative z-1">
                        <a href="" class="title text-lg font-semibold hover:text-teal-500">{{item.title}}</a>
                        <p class="text-slate-400 mt-3">{{item.desc}}</p>

                        <!-- <div class="mt-6">
                            <a href="" class="text-teal-500">Read More <i class="mdi mdi-chevron-right align-middle"></i></a>
                        </div> -->
                    </div>

                    <div class="absolute bottom-0 -end-16">
                        <i :data-feather="item.icon" class="size-48 text-teal-500 opacity-[0.04] dark:opacity-[0.04] group-hover:opacity-10 duration-500"></i>
                    </div>
                </div>
            </div><!--end grid-->
        </div><!--end container-->
    </section>
</template>

<script>
 import feather from 'feather-icons'
    export default {
        data(){
            return{
                servicesData :[
                    {
                        id:1,
                        icon:'home',
                        title:'Hospedaje',
                        desc:'2 cabañas para 4 personas.\n 2 cabañas para 2 personas. '
                    },
                    {
                        id:2,
                        icon:'align-justify',
                        title:'Piscina',
                        desc:'De 6 x 12 metros.\n Pileta para niños. Jacuzzi.'
                    },
                    {
                        id:3,
                        icon:'truck',
                        title:'Cochera',
                        desc:'Cocheras cubiertas.\n Capacidad 4 vehículos'
                    },
                    {
                        id:4,
                        icon:'sun',
                        title:'Aire Libre',
                        desc:'Amplio parque.\n Parrilas.'
                    },
                ]
            }
        },

        mounted() {
        feather.replace();
        }
    
    }
</script>
<style scope>
    .salto-linea{
        white-space: pre-line;
    }
</style>