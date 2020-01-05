<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php") ?>
    <style>
        body {
            margin: 0;
            width: 100%;
            height: 100%;
            color: #fff;
            background: linear-gradient(45deg, #23d5ab, #23a6d5, #52eec3, #57ee52);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        @keyframes gradientBG {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }
    </style>
</head>

<body>