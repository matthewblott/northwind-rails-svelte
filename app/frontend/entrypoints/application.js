import { createInertiaApp } from '@inertiajs/svelte'
import Layout from '../components/Layout.svelte'

createInertiaApp({
  resolve: name => {
    const pages = import.meta.glob('../pages/**/*.svelte', { eager: true })
    let page = pages[`../pages/${name}.svelte`]

    let layout = null

    if (page.layout === undefined) {
      layout = Layout
    }

    if (name === 'login/index') {
      layout = undefined
    }

    return {
      default: page.default,
      layout: layout
    }

  },
  setup({ el, App, props }) {
    new App({ target: el, props })
  },
})
