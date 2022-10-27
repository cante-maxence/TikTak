<script setup lang="ts">
import type { Montres } from '@/types';
import { ref } from 'vue';
import SvgMontre from '@/components/SvgMontre.vue';
import { colors } from '@/types';
import FormKitMontre from '@/components/FormKitMontre.vue'
import { useRouter } from "vue-router";
import { supabase } from '@/supabase';

const router = useRouter();
const props = defineProps<{
  data?: Montres;
  id?: string;
}>();
const montre = ref<Montres>(props.data ?? {});

// @ts-ignore
async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message])
  else {
    node.setErrors([]);
    router.push({ name: "montres-edit-id", params: { id: data[0].id } });
  }
}
if (props.id) {
  // On charge les données de la montre
  let { data, error } = await supabase
    .from("MONTRE")
    .select("*")
    .eq("id", props.id);
  if (error) console.log("n'a pas pu charger le table Montres :", error);
  else montre.value = (data as any[])[0];
}
</script>
<template>
  <div class="p-2 ">
    <div class="w-64">
      <SvgMontre class="w-64" v-bind="montre" />
    </div>
    <FormKit type="form" v-model="montre" @submit="upsertMontre" :submit-attrs="{ classes: { input: 'text-white' } }">

      <FormKitMontre name="ecran" label="Écran" />
      <FormKitMontre name="boitier" label="Boitier" />
      <FormKitMontre name="bracelet" label="Bracelet" />
    </FormKit>
  </div>
</template>