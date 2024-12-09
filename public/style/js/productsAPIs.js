function formatShortDate(dateString) {
    const date = new Date(dateString);
    const year = date.getFullYear();
    const month = date.toLocaleString('en-US', { month: 'short' });
    const day = String(date.getDate()).padStart(2, '0');
    return `${year} ${month} ${day}`;
}
const currentPage = new URLSearchParams(window.location.search).get('page') ?? 1;
getProducts(currentPage);
function getProducts(currentPage=1){
    fetch(`/api/products?page=${currentPage}`, {
        headers: {
            'Authorization': 'Bearer ' + userToken
        }
    })
        .then(response => response.json())
        .then(data => {
            const productList = document.querySelector('table tbody');
            const totalElement = document.getElementById('totalProducts');
            const btnGroup = document.getElementById('btnGroup');
            productList.innerHTML = '';
            btnGroup.innerHTML = '';
            products = data.data.products.data;
            totalProducts = data.data.products.total
            totalElement.textContent = totalProducts
            pages = Math.ceil(totalProducts / 10);
            for (let i = 0; i < pages; i++) {
                let pageItem = document.createElement('a')
                pageItem.setAttribute('onclick', `getProducts(${i+1})`)
                pageItem.className = `btn btn-${currentPage == (i+1) ? '':'outline-'}primary`;
                pageItem.textContent = i + 1;
                btnGroup.appendChild(pageItem)
            }
            products.forEach(product => {
                const item = document.createElement('tr');
                item.id = `item-${product.id}`
                item.innerHTML = `
                    <th>#${product.id}</th>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>$${product.price}</td>
                    <td>${product.quantity}</td>
                    <td width='100'>${formatShortDate(product.created_at)}</td>
                    <td width="80">
                        <a href="#" class="text-danger text-decoration-none" onclick="deleteProduct(${product.id})">
                            <i class="fa-solid fa-circle-xmark"></i>
                        </a>
                    </td>
                    `;
                productList.appendChild(item);
            });
        })
        .catch(error => console.error('Error:', error));
}
function deleteProduct(id){
    fetch(`/api/products/${id}`, {
        method: 'DELETE',
        headers: {
            'Authorization': 'Bearer ' + userToken
        }
    })
        .then(response => response.json())
        .catch(error => console.error('Error:', error));
    document.getElementById(`item-${id}`).remove();
}
