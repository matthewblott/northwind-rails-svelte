<script lang="ts">
  import { getCookie } from "../lib/utils";
  import { onMount } from "svelte";
  import { router } from "@inertiajs/svelte";

  export let path = "";
  export let value = "";
  export let display = "";

  let records = [];
  let component;

  onMount(() => {
    if (display !== "") {
      component.querySelector('input[placeholder="search"]').value = display;
    }
  });

  const keyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
    };

    if (e.keyCode === 8 && search.length === 0) {
      records = [];
      return;
    }

    const timeout = setTimeout(() => {
      if (search.length === 0) {
        records = [];
        component.querySelector('input[placeholder="search"]').value = "";
        value = "";

        return;
      }

      if (search.length < 2) {
        return;
      }

      const cookie = getCookie("XSRF-TOKEN");

      fetch(`${path}`, {
        method: "post",
        headers: {
          "Content-Type": "application/json",
          "X-Inertia": true,
          "X-XSRF-TOKEN": cookie,
        },
        body: JSON.stringify(data),
      })
        .then((response) => response.json())
        .then((data) => {
          records = data;
        })
        .catch((error) => {
          console.log(error);
        });
    }, 500);
  };

  const click = (e) => {
    component.querySelector('input[placeholder="search"]').value =
      e.target.innerText;

    value = e.target.querySelector("span[hidden]").innerText;

    records = [];
  };
</script>

<div bind:this={component}>
  <div class="search">
    <input on:keyup={keyup} placeholder="search" title={value} />
    <input-end>{value === null ? "" : value}</input-end>
    <input type="hidden" bind:value />
  </div>

  <ul>
    {#each Object.entries(records) as [key, value]}
      <li on:click={click}>
        <span>
          {Object.values(value)}
          <span hidden>{Object.keys(value)}</span>
        </span>
      </li>
    {/each}
  </ul>
</div>

<style>
  div.search {
    display: grid;
  }

  input {
    width: 100%;
  }
  li {
    padding-right: 5px;
    cursor: pointer;
  }
</style>
