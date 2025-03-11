<?php
namespace Vendor\NewsAdsignage\Domain\Model;

use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class AktivTipp extends AbstractEntity {

    /**
     * Title of the route
     *
     * @var string
     */
    protected $title = '';

    /**
     * Starting location
     *
     * @var string
     */
    protected $startLocation = '';

    /**
     * Destination location
     *
     * @var string
     */
    protected $destination = '';

    /**
     * Route length
     *
     * @var string
     */
    protected $routeLength = '';

    /**
     * Climb details
     *
     * @var string
     */
    protected $climbDetails = '';

    /**
     * Duration of the activity
     *
     * @var string
     */
    protected $duration = '';

    /**
     * Difficulty level
     *
     * @var string
     */
    protected $difficultyLevel = '';

    /**
     * Image reference
     *
     * @var string
     */
    protected $image = '';

    // Implement getters and setters for each property
    // e.g.
    public function getTitle(): string {
        return $this->title;
    }
    
    public function setTitle(string $title): void {
        $this->title = $title;
    }

    // Repeat similarly for other properties...
}
