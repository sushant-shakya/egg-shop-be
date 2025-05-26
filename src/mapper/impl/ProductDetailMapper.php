<?php

namespace App\mapper\impl;

use App\mapper\RowMapper;
use App\model\ProductDetail;

class ProductDetailMapper implements RowMapper
{

    public function map($row): ProductDetail
    {
        return new ProductDetail(
            $row["id"],
            $row["title"],
            $row["description"],
            $row["distributor"],
            $row["price"],
            $row["image_url"],

        );
    }
}