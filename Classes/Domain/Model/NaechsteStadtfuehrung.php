<?php
namespace Vendor\NewsAdsignage\Domain\Model;

use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class NaechsteStadtfuehrung extends AbstractEntity
{
    /**
     * Title of the city tour.
     *
     * @var string
     */
    protected $title = '';

    /**
     * Date and time information.
     *
     * @var \DateTime|null
     */
    protected $dateTime = null;

    /**
     * Duration of the tour (e.g., "90 minutes").
     *
     * @var string
     */
    protected $duration = '';

    /**
     * "Starts In" information (e.g., "Begins in 47 minutes").
     *
     * @var string
     */
    protected $startsIn = '';

    /**
     * Organizer of the tour.
     *
     * @var string
     */
    protected $organizer = '';

    /**
     * Address where the tour takes place.
     *
     * @var string
     */
    protected $address = '';

    /**
     * Contact phone number.
     *
     * @var string
     */
    protected $phone = '';

    /**
     * Image reference (via FAL).
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

    public function getDuration(): string
    {
        return $this->duration;
    }

    public function setDuration(string $duration): void
    {
        $this->duration = $duration;
    }

    public function getStartsIn(): string
    {
        return $this->startsIn;
    }

    public function setStartsIn(string $startsIn): void
    {
        $this->startsIn = $startsIn;
    }

    public function getOrganizer(): string
    {
        return $this->organizer;
    }

    public function setOrganizer(string $organizer): void
    {
        $this->organizer = $organizer;
    }

    public function getAddress(): string
    {
        return $this->address;
    }

    public function setAddress(string $address): void
    {
        $this->address = $address;
    }

    public function getPhone(): string
    {
        return $this->phone;
    }

    public function setPhone(string $phone): void
    {
        $this->phone = $phone;
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
