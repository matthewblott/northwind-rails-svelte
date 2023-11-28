<script lang="ts">
  import { capitalCase } from "change-case";
  export let name = "";
  export let value = "";
  export let error = "";
</script>

<field>
  <label for={name}>{capitalCase(name)}</label>
  <input id={name} {name} bind:value />
  {#if error}
    <error class="hidden">
      {error}
    </error>
  {/if}
</field>
