<script setup lang="ts">
import FicheOffreMontre from "../components/MontreCustom.vue";
import { supabase } from "../supabase";
let { data: montres, error } = await supabase.from("Montre").select("*");
console.log(montres);
if (error) console.log("n'a pas pu charger le table montre :", error);
</script>
<template>
    <div class="p-2">
        <MontreCustom v-for="montre in montres" :key="montre.nomMontre" v-bind="montre" />
    </div>
</template>
