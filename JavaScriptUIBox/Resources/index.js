
$ui.render({
    title: "hello world",
    props: {
        label: "hello world",
    },
    views: [
        {
            type: "view",
            props: {
                rect: $rect(100, 200, 300, 300),
                backgroundColor: $color(255, 255, 44, 1.0),
            },
            layout: function(make, view) {
                view.bgColor = $color(111, 255, 44, 1.0);
                $log("hello woldf");
            }
        }
    ],
});

//$UI.render({
//    views: [
//        {
//            type: "view",
//            props: {
//                x: 100,
//                y: 100,
//                width: 200,
//                height: 200,
//                color: 'red'
//            },
//            views: [
//                {
//                    type: "view",
//                    props: {
//                        x: 10,
//                        y: 50,
//                        width: 100,
//                        height: 50,
//                    },
//                }
//            ],
//            tap: function(a, b) {
//                return a + b;
//            }
//        },
//        {
//            type: "button",
//            props: {
//                title: "my button",
//                x: 100,
//                y: 400,
//                width: 200,
//                height: 200,
//            }
//        }
//    ]
//});

