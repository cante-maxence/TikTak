<script setup lang="ts">
import FormsMontre from '@/components/FormsMontre.vue';
import FormKitMontre from '@/components/FormKitMontre.vue';
</script>

<template>

    <p class="text-white font-light text-5xl mt-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
        TiK•TaK<br />l’Originalité est a votre poigné
    </p>
    <div class=" flex m-auto  w-1/3 py-10">
        <img c src="../assets/301accueil.png" alt="Une montre de luxe sur une couette bleu"
            class="w-full h-full object-cover">
        <p class="sr-only">Homme tenant une barre de fer avec une montre de luxe</p>
    </div>


    <p
        class="text-white font-light text-3xl md:w-full pt-5  mx-6 text-center sm:text-lg md:text-xl lg:text-2xl xl:text-3xl">
        Bienvenue chez TiK•TaK !<br />Le site qui vous permet de créer de toutes pièces une montre <br />absolument
        unique. Grâce à notre outil de
        conception vous pourrez<br />personnaliser une montre dans le moindre détail.
        <br /><br />
        Le temps n’attends personne alors dépêchez vous !!!
    </p>

    <div class="border-sky-400 border-2 hover:border-t-4  grid grid-cols-2 my-10 mx-16 p-auto">


        <!--Card 1-->
        <div class=" rounded overflow-hidden shadow-lg pb-5">
            <p
                class="text-white font-light text-5xl mt-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
                Cuir
            </p>
            <div class="radio pt-5 grid grid-cols-2">
                <div class="radio__1">

                </div>

                <input id="radio-2" type="radio" name="radio" value="2" checked>
                <label for="radio-2 " class=" text-white"></label>
            </div>
            <div class="px-6 py-4 ">
                <div class="font-bold  mb-2 text-white text-center  lg:text-2xl xl:text-3xl">
                    Cuir Français</div>
                <p class="text-gray-700 text-base text-center invisible md:visible lg:visible xl:visible">
                    Dans le monde du luxe, le cuir s'est imposé <br />comme un matériau aux finitions raffinées.
                    <br /> 100% Français nous vient tout droit de
                    l'Allier
                </p>
            </div>

        </div>

        <div class=" rounded overflow-hidden shadow-lg pb-5 sr-only">
            <p
                class="text-white font-light text-5xl mt-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
                Cuir
            </p>
            <div class="radio pt-5 grid grid-cols-2">
                <div class="radio__1">

                </div>

                <input id="radio-2" type="radio" name="radio" value="2" checked>
                <label for="radio-2 " class=" text-white"></label>
            </div>
            <div class="px-6 py-4 ">
                <div class="font-bold  mb-2 text-white text-center  lg:text-2xl xl:text-3xl">
                    Cuir Français</div>
                <p class="text-gray-700 text-base text-center invisible md:visible lg:visible xl:visible">
                    Dans le monde du luxe, le cuir s'est imposé <br />comme un matériau aux finitions raffinées.
                    <br /> 100% Français nous vient tout droit de
                    l'Allier
                </p>
            </div>








        </div>

        <!--Card 1-->
        <div class=" rounded overflow-hidden shadow-lg pb-5">
            <p
                class="text-white font-light text-5xl mt-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
                Tissu
            </p>
            <div class="radio grid pt-5 grid-cols-2">
                <div class="radio__1">

                </div>

                <input id="radio-2" type="radio" name="radio" value="2" checked>
                <label for="radio-2 " class=" text-white"></label>
            </div>
            <div class="px-6 py-4">
                <div class="font-bold  mb-2 text-white text-center  lg:text-2xl xl:text-3xl">
                    Tissu Français</div>
                <p class="text-gray-700 text-base text-center invisible md:visible lg:visible xl:visible"><br />
                    Qualité supérieure, parfaitement<br /> adapté à votre boîtier de montre.
                </p>
            </div>

        </div>

        <div class=" rounded sr-only overflow-hidden shadow-lg pb-5">
            <p
                class="text-white font-light text-5xl mt-10 mx-6 text-center sm:text-3xl md:text-4xl lg:text-5xl xl:text-6xl">
                Tissu
            </p>
            <div class="radio grid pt-5 grid-cols-2">
                <div class="radio__1">

                </div>

                <input id="radio-2" type="radio" name="radio" value="2" checked>
                <label for="radio-2 " class=" text-white"></label>
            </div>
            <div class="px-6 py-4">
                <div class="font-bold  mb-2 text-white text-center  lg:text-2xl xl:text-3xl">
                    Tissu Français</div>
                <p class="text-gray-700 text-base text-center invisible md:visible lg:visible xl:visible"><br />
                    Qualité supérieure, parfaitement<br /> adapté à votre boîtier de montre.
                </p>
            </div>

        </div>

    </div>

    <!--personalisation de la montre-->

    <FormsMontre />



    <div class="py-6 ">
        <div class="flex max-w-md  border-sky-400 border-2 hover:border-t-4  shadow-lg rounded-lg overflow-hidden">

            <div class="w-full p-4">
                <h1 class="text-white font-bold text-2xl">Montre</h1>

                <div class="flex item-center mt-2">

                </div>
                <div class="flex item-center justify-between mt-3">
                    <h1 class="text-gray-400 font-bold text-xl">184 €</h1>
                    <button class="px-3 py-2 bg-blue-800 text-white text-xs font-bold uppercase rounded">Ajouter
                        au
                        panier</button>
                    <button class="px-3 py-2 bg-blue-800 text-white text-xs font-bold uppercase rounded">Ajouter
                        a
                        votre
                        liste</button>

                </div>

            </div>

        </div>
    </div>


</template>

<style>

</style>