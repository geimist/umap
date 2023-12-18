// Import from a CDN for now to avoid solving the imports for now.
// import { Doc } from 'https://unpkg.com/yjs@13.5.1/dist/yjs.mjs?module'

class Storage {
  constructor() {
    // this.doc = new Doc()
    // this.kv_store = this.doc.getMap('kvstore')
    this._store = {}

    /* const websocketProvider = new WebsocketProvider(
      'wss://demos.yjs.dev',
      'umap',
      this.doc
    ) */
  }

  set(dataType, data, metadata) {
    if (!data.uuid) data.uuid = this.getUniqueId()
    this._store[uuid] = data
    console.table(this._store)
    return data.uuid
  }

  getUniqueId() {
    // FIXME: For test purposes only, random IDs are not unique. Use UUIDs instead.
    const array = new Uint32Array(1)
    crypto.getRandomValues(array)
    console.info('new id', array[0])
    return array[0]
  }
}

class Data {}

class Layer extends Data {
  dataType = 'layer'

  set(data) {}
  get(uuid) {}
}

class Feature extends Data {
  dataType = 'feature'

  set(data) {}
  get(uuid) {}
}

export { Storage }
