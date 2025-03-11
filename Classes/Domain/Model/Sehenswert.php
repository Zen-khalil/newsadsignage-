<?php
namespace Vendor\NewsAdsignage\Domain\Model;

use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class Sehenswert extends AbstractEntity {
    
    /**
     * Title of the attraction
     *
     * @var string
     */
    protected $title = '';

    /**
     * Opening hours for the attraction
     *
     * @var string
     */
    protected $openingHours = '';

    /**
     * Operating time information (optional)
     *
     * @var string
     */
    protected $operatingTime = '';

    /**
     * Address
     *
     * @var string
     */
    protected $address = '';

    /**
     * Related image (may be a FAL reference uid)
     *
     * @var string
     */
    protected $image = '';

    // Getter and setter for Title
    public function getTitle(): string {
        return $this->title;
    }
    
    public function setTitle(string $title): void {
        $this->title = $title;
    }

    // Getter and setter for Opening Hours
    public function getOpeningHours(): string {
        return $this->openingHours;
    }
    
    public function setOpeningHours(string $openingHours): void {
        $this->openingHours = $openingHours;
    }

    // Similarly, add getter and setter methods for operatingTime, address, and image
    public function getOperatingTime(): string {
        return $this->operatingTime;
    }
    
    public function setOperatingTime(string $operatingTime): void {
        $this->operatingTime = $operatingTime;
    }

    public function getAddress(): string {
        return $this->address;
    }
    
    public function setAddress(string $address): void {
        $this->address = $address;
    }
    
    public function getImage(): string {
        return $this->image;
    }
    
    public function setImage(string $image): void {
        $this->image = $image;
    }
}
