<script lang="ts">
  import { capitalCase } from "change-case";
  import { onMount } from "svelte";
  export let name = "";
  export let value = 0;
  export let error = "";
  let field;

  const keydown = (e) => {
    const backspace = 8;
    const leftArrow = 37;
    const rightArrow = 39;

    if (e.keyCode >= 48 && e.keyCode <= 57) {
      return true;
    }

    if (e.keyCode === backspace) {
      return true;
    }
    if (e.keyCode === leftArrow) {
      return true;
    }
    if (e.keyCode === rightArrow) {
      return true;
    }

    e.preventDefault();
    return false;
  };

  onMount(() => {
    field.querySelector("input[type='number']").value = parseInt(value);
  });
</script>

<field bind:this={field}>
  <label for={name}>{capitalCase(name)}</label>

  <input id={name} {name} bind:value type="number" on:keydown={keydown} />
  {#if error}
    <error class="hidden">
      {error}
    </error>
  {/if}
</field>
