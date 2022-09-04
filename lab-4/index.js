const goods = [
  {
    id: 1,
    name: 'Tiny shark',
    cost: 213,
  },
]

const cart = []

function changePage(page, name) {
  document.getElementById('content').innerHTML = page

  if (name === 'cart') {
    const goodsTable = document.querySelector('.goods')
    const cartTable = document.querySelector('.chosen')
    goods.forEach(
      g =>
        (goodsTable.innerHTML += `<tr class="item-${g.id}"><td>${g.id}</td><td>${g.name}</td><td>$${g.cost}</td></tr>`)
    )
    updateCart()

    goodsTable.onclick = e => {
      const id = +e.target.parentNode.className.split('-')[1]
      if (!cart.includes(id) && id) {
        cart.push(id)
        updateCart()
      }
    }

    cartTable.onclick = e => {
      const id = +e.target.parentNode.className.split('-')[1]
      if (id) {
        cart.splice(cart.indexOf(id), 1)
        updateCart()
      }
    }
  } else if (name === 'form') {
    document.querySelector('#addButton').onclick = validateForm
  }
}

function updateCart() {
  const table = document.querySelector('.chosen')
  table.innerHTML = ''
  cart.forEach(i => {
    const good = goods.find(g => g.id === i)
    table.innerHTML += `<tr class="chosen-${i}"><td>${good.name}</td><td>$${good.cost}</td></tr>`
  })
}

function validateForm(event) {
  event.preventDefault()
  const form = document.querySelector('form')

  if (form.productName.value && form.cost.value) {
    goods.push({
      id: Math.floor(Math.random() * 10000),
      name: form.productName.value,
      cost: form.cost.value,
    })
  }
}

function onLoad() {
  const form = document.getElementById('form').innerHTML
  const cart = document.getElementById('cart').innerHTML

  changePage(form, 'form')
  document.getElementById('page_add').onclick = () => changePage(form, 'form')
  document.getElementById('page_cart').onclick = () => changePage(cart, 'cart')
}

window.onload = onLoad
