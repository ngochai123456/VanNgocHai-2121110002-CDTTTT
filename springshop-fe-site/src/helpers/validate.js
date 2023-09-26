export const validateProduct = (data) => {
    var errPassMsg = "";
    if (data.productName === '') errPassMsg += 'Bạn cần nhập tên sản phẩm <br />'
    if (data.price === '') errPassMsg += 'Bạn cần nhập giá sản phẩm <br />'
    if (data.price<0 || data.price>1000000) errPassMsg +='Giá sản phẩm phải trong khoảng 0-1000000<br />'
    if (data.description === '') errPassMsg += 'Bạn cần nhập tên sản phẩm <br />'
    if (data.image[0] === '') errPassMsg += 'Bạn cần hai hình ảnh sản phẩm <br />'
    if (data.image[1] === '') errPassMsg += 'Bạn cần hai hình ảnh sản phẩm <br />'
    return errPassMsg;
}