<template>
     <section class="relative lg:py-24 py-16 bg-slate-50 dark:bg-slate-800" id="contact">
            <div class="container relative">
                <div class="grid grid-cols-1 pb-6 text-center">
                    <h3 class="font-semibold text-2xl leading-normal mb-4">Nuestra ubicación </h3>
                    <p class="text-slate-400 max-w-xl mx-auto">Un recorrido escénico desde la entrada de la villa hasta el corazón de las sierras.</p>
                </div>
            </div>

            <div class="mt-6">
                <MapaMerlo />
            </div>
        </section>
</template>

<script setup>
  import MapaMerlo from './MapaMerlo.vue'
</script>