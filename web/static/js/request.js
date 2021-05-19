function requestPostData(url, data, callback, errCallback, afterDone) {
    $.ajax({
        type: "POST", //方法类型
        dataType: "json", //预期服务器返回的数据类型
        url: encodeURI("/"+url), //url
        contentType: "application/json; charset=utf-8",//服务器端用对象接受
        data: JSON.stringify(data),
        success: function (result) {
            if (callback) {
                callback(result);
            }
        },
        error: function (err) {
            if (errCallback) {
                errCallback(err);
            }
        }
    }).done(function () {
        if (afterDone) {
            afterDone();
        }
    });
}