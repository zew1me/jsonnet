local arr = std.range(0, 5);
local str = "012345";
local a = 2;
local b = 4;

local arrCases = [
    {
        input: arr[2:4],
        output: [2, 3],
    },
    {
        input: arr[2:4:1],
        output: [2, 3],
    },
    {
        input: arr[:4],
        output: [0, 1, 2, 3],
    },
    {
        input: arr[2:],
        output: [2, 3, 4, 5],
    },
    {
        input: arr[:],
        output: arr,
    },
    {
        input: arr[:1000],
        output: arr,
    },
    {
        input: arr[::],
        output: arr,
    },
    {
        input: arr[::2],
        output: [0, 2, 4],
    },
    {
        input: arr[:0:],
        output: [],
    },
    {
        input: arr[a:b],
        output: [2, 3 ],
    },
    {
        input: arr[a:b + 1],
        output: [2, 3, 4],
    },
    {
        input: arr[2:1000],
        output: [2, 3, 4, 5],
    },

];

local strCases = [
    {
        input: str[2:4],
        output: "23",
    },
    {
        input: str[2:4:1],
        output: "23",
    },
    {
        input: str[:4],
        output: "0123",
    },
    {
        input: str[2:],
        output: "2345",
    },
    {
        input: str[:],
        output: str,
    },
    {
        input: str[:1000],
        output: str,
    },
    {
        input: str[::],
        output: str,
    },
    {
        input: str[::2],
        output: "024",
    },
    {
        input: str[:0:],
        output: "",
    },
    {
        input: str[a:b],
        output: "23",
    },
    {
        input: str[a:b + 1],
        output: "234",
    },
    {
        input: str[2:1000],
        output: "2345",
    },
];

std.foldl(
    function(bool, case)
        bool && std.assertEqual(case.input, case.output),
    arrCases + strCases,
    true,
)