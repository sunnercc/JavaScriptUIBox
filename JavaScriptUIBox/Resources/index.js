
$ui.render({
    title: "hello world",
    props: {
        label: "hello world",
    },
    views: [
        {
            type: "view",
            props: {
//                rect: $rect(100, 200, 300, 300),
                bgColor: $color(20, 255, 44, 1.0),
            },
            layout: function(make, view) {
                make.left.equalTo(view.left + 10);
                make.top.equalTo(view.top + 200);
                make.width.height.equalTo(300);
            }
        },
        {
            type: "view",
            props: {
                bgColor: $color(20,200,44,1.0),
            }
        }
    ],
});

