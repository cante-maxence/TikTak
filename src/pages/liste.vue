<script setup lang="ts">
import { supabase } from "@/supabase";
import SvgMontre from "../components/SvgMontre.vue";
const props = defineProps<{
    max?: number;
}>();
const { data: montre, error } = await supabase
    .from("montre")
    .select("*")
    .limit(props.max ?? 100);
if (error) {
    console.log("n'a pas pu récupérer les montres", { error });
}
</script>
<template>

    <p class="text-white font-light text-5xl my-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
        Vos montres sauvegardés<br />Ici toutes vos montres vous attendent,
        si vous souhaitez les revoir
    </p>

    <ul class="border-sky-400 border-2 hover:border-t-4 ">
        <li v-for="m in montre" :key="m.id_montre">
            <router-link :to="{ name: 'index', params: { id: m.id_montre } }">
                <SvgMontre class="w-64" v-bind="m" />
            </router-link>

        </li>
    </ul>
</template>
