<script setup>
import { LMap, LTileLayer, LPolyline, LMarker } from "@vue-leaflet/vue-leaflet";
import "leaflet/dist/leaflet.css";

// Coordenadas de la ruta (generadas con una herramienta externa)
const rutaCoordenadas = [
  [-32.347468, -65.015774], // Punto de inicio
  [-32.34565635281955, -65.01572461888692],
  [-32.34560626400074, -65.01296771689846],
  [-32.346098802858286, -65.00937089832256],
  [-32.34679169195142, -65.00426223048012],
  [-32.34774336231472, -64.99591247326694],
  [-32.345263989638134, -64.99553698122006],
  [-32.342509051411625, -64.99630772801318],
  [-32.339587055641175, -64.99672274551682],
  [-32.33945347639471, -64.99570496444176],
  [-32.338835670007924, -64.99542828610599],
  [-32.33840988207011, -64.9944796746691]
];

const puntoFinal = [-32.33840988207011, -64.9944796746691];
</script>

<template>
  <div style="height:500px; width:100%; border-radius: 12px; overflow: hidden;">
    <LMap :zoom="14" :center="[-32.34685119017603, -65.00435136109022]">
      <LTileLayer
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        attribution="&copy; OpenStreetMap contributors"
      />
      <LPolyline :lat-lngs="rutaCoordenadas" color="#ff0000" :weight="5" />
      
      <LMarker :lat-lng="puntoFinal">
      </LMarker>
    </LMap>
  </div>
</template>