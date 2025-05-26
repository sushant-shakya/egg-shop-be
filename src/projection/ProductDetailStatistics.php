<?php

namespace App\projection;
class ProductDetailStatistics
{
    public int $id;
    public string $title;
    public int $sold;
    public int $available;
    public int $damaged;

    public function getAvailable(): int
    {
        return $this->available;
    }

    public function setAvailable(int $available): void
    {
        $this->available = $available;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function setId(int $id): void
    {
        $this->id = $id;
    }

    public function getDamaged(): int
    {
        return $this->damaged;
    }

    public function setDamaged(int $damaged): void
    {
        $this->damaged = $damaged;
    }

    public function getSold(): int
    {
        return $this->sold;
    }

    public function setSold(int $sold): void
    {
        $this->sold = $sold;
    }

    public function getTitle(): string
    {
        return $this->title;
    }

    public function setTitle(string $title): void
    {
        $this->title = $title;
    }


}
