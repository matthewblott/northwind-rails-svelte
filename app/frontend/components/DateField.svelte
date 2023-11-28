<script lang="ts">
  import { onMount } from "svelte";
  import { capitalCase } from "change-case";
  export let name = "";
  export let value = "";
  export let error = "";

  let field;

  onMount(() => {
    if (!value) {
      return;
    }
    field.querySelector("input[type='date']").value = value.substr(0, 10);
  });
</script>

<field bind:this={field}>
  <label for={name}>{capitalCase(name)}</label>
  <input type="date" id={name} {name} bind:value />
  {#if error}
    <error class="hidden">
      {error}
    </error>
  {/if}
</field>
