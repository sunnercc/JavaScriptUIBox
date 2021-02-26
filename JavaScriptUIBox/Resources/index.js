$UI.render({
    views: [
        {
            type: "view",
            props: {
                x: 100,
                y: 100,
                width: 200,
                height: 200,
                color: 'red'
            },
            views: [
                {
                    type: "view",
                    props: {
                        x: 10,
                        y: 50,
                        width: 100,
                        height: 50,
                    },
                }
            ],
        },
        {
            type: "button",
            props: {
                title: "my button",
                x: 100,
                y: 400,
                width: 200,
                height: 200,
            }
        }
    ]
});

