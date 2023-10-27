<script lang="ts">
  import { createEventDispatcher } from "svelte";
  import { onMount } from "svelte";

  let dispatch = createEventDispatcher();

  export let limit;
  let offset;
  export let count;

  const roundedCount = (count, limit) => {
    const roundedCount = count - (count % limit);
    return roundedCount;
  };

  $: buttons = {
    first: {
      enabled: false,
    },
    previous: {
      enabled: false,
    },
    next: {
      enabled: true,
    },
    last: {
      enabled: true,
    },
  };

  const first = () => {
    offset = 0;
    dispatch("next", {
      offset: offset,
    });
    buttons.first.enabled = false;
    buttons.previous.enabled = false;
    buttons.next.enabled = true;
    buttons.last.enabled = true;
  };

  const previous = () => {
    offset = offset - limit;
    dispatch("next", {
      offset: offset,
    });
    buttons.first.enabled = offset > 0;
    buttons.previous.enabled = offset > 0;
    buttons.next.enabled = true;
    buttons.last.enabled = true;
  };

  const next = () => {
    offset = offset + limit;
    dispatch("next", {
      offset: offset,
    });
    buttons.first.enabled = true;
    buttons.previous.enabled = true;
    const rc = roundedCount(count, limit);
    buttons.next.enabled = rc > offset;
    buttons.last.enabled = rc > offset;
  };

  const last = () => {
    offset = roundedCount(count, limit);
    dispatch("next", {
      offset: offset,
    });
    buttons.first.enabled = true;
    buttons.previous.enabled = true;
    buttons.next.enabled = false;
    buttons.last.enabled = false;
  };

  onMount(() => {
    offset = 0;
    console.log(count);
  });
</script>

{#if buttons.first.enabled}
  <button on:click|preventDefault={first}>First</button>
{:else}
  <button disabled>First</button>
{/if}
{#if buttons.previous.enabled}
  <button on:click|preventDefault={previous}>Previous</button>
{:else}
  <button disabled>Previous</button>
{/if}
{#if buttons.next.enabled}
  <button on:click|preventDefault={next}>Next</button>
{:else}
  <button disabled>Next</button>
{/if}
{#if buttons.last.enabled}
  <button on:click|preventDefault={last}>Last</button>
{:else}
  <button disabled>Last</button>
{/if}
