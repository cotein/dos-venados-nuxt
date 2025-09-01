<script setup>
import { Carousel, Navigation, Pagination, Slide } from 'vue3-carousel';

// 1. IMPORTANTE: Importamos el CSS necesario desde la carpeta 'dist'
// Este fue el error que tuviste en intentos anteriores.
import 'vue3-carousel/dist/carousel.css';

import image1 from '~/assets/images/cabanias2/dp1.jpg';
import image3 from '~/assets/images/cabanias2/dp3.jpg';
import image4 from '~/assets/images/cabanias2/dp4.jpg';
import image5 from '~/assets/images/cabanias2/dp5.jpg';
import image6 from '~/assets/images/cabanias2/dp6.jpg';
import image7 from '~/assets/images/cabanias2/dp7.jpg';
import image8 from '~/assets/images/cabanias2/dp8.jpg';
import image9 from '~/assets/images/cabanias2/dp9.jpg';
import image10 from '~/assets/images/cabanias2/dp10.jpg';
import image11 from '~/assets/images/cabanias2/dp11.jpg';
import image12 from '~/assets/images/cabanias2/dp12.jpg';
import image13 from '~/assets/images/cabanias2/dp13.jpg';
import image14 from '~/assets/images/cabanias2/dp14.jpg';
import image15 from '~/assets/images/cabanias2/dp15.jpg';
import image16 from '~/assets/images/cabanias2/dp16.jpg';
import image17 from '~/assets/images/cabanias2/dp17.jpg';
import image18 from '~/assets/images/cabanias2/dp18.jpg';


// --- 2. Arreglo con las 18 imágenes importadas ---

const images = [
  { src: image1, alt: 'Cabaña para 2 personas vista 1' },
  { src: image3, alt: 'Cabaña para 2 personas vista 3' },
  { src: image4, alt: 'Cabaña para 2 personas vista 4' },
  { src: image5, alt: 'Cabaña para 2 personas vista 5' },
  { src: image6, alt: 'Cabaña para 2 personas vista 6' },
  { src: image7, alt: 'Cabaña para 2 personas vista 7' },
  { src: image8, alt: 'Cabaña para 2 personas vista 8' },
  { src: image9, alt: 'Cabaña para 2 personas vista 9' },
  { src: image10, alt: 'Cabaña para 2 personas vista 10' },
  { src: image11, alt: 'Cabaña para 2 personas vista 11' },
  { src: image12, alt: 'Cabaña para 2 personas vista 12' },
  { src: image13, alt: 'Cabaña para 2 personas vista 13' },
  { src: image14, alt: 'Cabaña para 2 personas vista 14' },
  { src: image15, alt: 'Cabaña para 2 personas vista 15' },
  { src: image16, alt: 'Cabaña para 2 personas vista 16' },
  { src: image17, alt: 'Cabaña para 2 personas vista 17' },
  { src: image18, alt: 'Cabaña para 2 personas vista 18' },
];

// Configuración del carrusel
const settings = {
  itemsToShow: 1, // Mostrar una imagen a la vez
  snapAlign: 'center', // Alinear la imagen activa al centro
};
</script>

<template>
  <div class="carousel-container">
   <h2 class="text-1l font-bold text-center mt-8 mb-6">Cabañas 2 personas </h2>
    <Carousel :settings="settings" :wrap-around="true" :autoplay="4000">
      <Slide v-for="(image, index) in images" :key="index">
        <div class="carousel__item">
          <img :src="image.src" :alt="image.alt" class="carousel__image">
        </div>
      </Slide>

      <template #addons>
        <Navigation />
        <Pagination />
      </template>
    </Carousel>
  </div>
</template>

<style scoped>
/* Estilos para asegurar que el carrusel se vea bien */
.carousel-container {
  width: 100%;
  max-width: 900px; /* Ancho máximo del carrusel */
  margin: 2rem auto; /* Centrado y con margen vertical */
  padding: 0 1rem;
}

.carousel__item {
  min-height: 200px;
  width: 100%;
  height: 500px; /* Altura fija para todas las diapositivas */
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 8px;
  overflow: hidden;
}

.carousel__image {
  width: 100%;
  height: 100%;
  object-fit: cover; /* Asegura que la imagen cubra el espacio sin deformarse */
}

/* Personalización de las flechas y puntos de navegación */
:deep(.carousel__prev),
:deep(.carousel__next) {
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
  border-radius: 50%;
  width: 40px;
  height: 40px;
}

:deep(.carousel__prev) {
  left: 20px;
}

:deep(.carousel__next) {
  right: 20px;
}

:deep(.carousel__pagination-button--active) {
  background-color: #10B981; /* Un color verde para el punto activo */
}
</style>