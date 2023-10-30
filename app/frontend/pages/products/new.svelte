<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let product = {};
  export let errors = {};

  const submit = () => {
    router.post(`/products/`, { product });
  };

  router.on("success", (event) => {
    console.log(`Successfully made a visit to ${event.detail.page.url}`);
  });

  router.on("finish", (event) => {
    console.log("finished");
  });
</script>

<h1>New Product</h1>
<Form {product} {errors} on:submit={submit} />

<style>
  label {
    display: block;
  }

  input {
    display: block;
  }

  button {
    display: block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
