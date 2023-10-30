<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let customer = {};
  export let errors = {};

  const submit = () => {
    router.put(`/customers/${customer.id}`, { customer });
  };

  router.on("success", (event) => {
    console.log(`Successfully made a visit to ${event.detail.page.url}`);
  });

  router.on("finish", (event) => {
    console.log("finished");
  });
</script>

<h1>Edit Customer</h1>
<Form {customer} {errors} on:submit={submit} />

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
