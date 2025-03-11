<?php
namespace Vendor\NewsAdsignage\Domain\Model;

use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class Veranstaltungstipp extends AbstractEntity
{
    /**
     * Title of the event tip.
     *
     * @var string
     */
    protected $title = '';

    /**
     * Date and time of the event.
     *
     * @var \DateTime|null
     */
    protected $dateTime = null;

    /**
     * Location where the event takes place.
     *
     * @var string
     */
    protected $location = '';

    /**
     * Detailed description of the event.
     *
     * @var string
     */
    protected $detailedDescription = '';

    /**
     * Image reference (via FAL) for the event.
     *
     * @var string
     */
    protected $image = '';

    // --- Getters and Setters ---

    public function getTitle(): string
    {
        return $this->title;
    }

    public function setTitle(string $title): void
    {
        $this->title = $title;
    }

    public function getDateTime(): ?\DateTime
    {
        return $this->dateTime;
    }

    public function setDateTime(\DateTime $dateTime): void
    {
        $this->dateTime = $dateTime;
    }

    public function getLocation(): string
    {
        return $this->location;
    }

    public function setLocation(string $location): void
    {
        $this->location = $location;
    }

    public function getDetailedDescription(): string
    {
        return $this->detailedDescription;
    }

    public function setDetailedDescription(string $detailedDescription): void
    {
        $this->detailedDescription = $detailedDescription;
    }

    public function getImage(): string
    {
        return $this->image;
    }

    public function setImage(string $image): void
    {
        $this->image = $image;
    }
}
