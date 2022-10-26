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
    <ul>
        <li v-for="m in montre" :key="m.id_montre">
            <router-link :to="{ name: 'index', params: { id: m.id_montre } }">
                <SvgMontre class="w-64" v-bind="m" />
            </router-link>
        </li>
    </ul>
</template>
