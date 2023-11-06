<script lang="ts">
  export let value;
</script>

{#if value}
  <span>{value}</span>{/if}

<style>
  span {
    color: firebrick;
  }
</style>
