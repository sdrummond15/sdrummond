<?php
/**
 * @package     SP Simple Portfolio
 *
 * @copyright   Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

defined('_JEXEC') or die();

require_once JPATH_COMPONENT . '/helpers/helper.php';
SpsimpleportfolioHelper::generateMeta($this->item);


$doc = JFactory::getDocument();

$doc->addStylesheet(JURI::root(true) . '/components/com_spsimpleportfolio/assets/css/spsimpleportfolio.css');

$tags = SpsimpleportfolioHelper::getTags((array)$this->item->spsimpleportfolio_tag_id);
$newtags = array();
foreach ($tags as $tag) {
    $newtags[] = $tag->title;
}

//video
if ($this->item->video) {
    $video = parse_url($this->item->video);

    switch ($video['host']) {
        case 'youtu.be':
            $video_id = trim($video['path'], '/');
            $video_src = '//www.youtube.com/embed/' . $video_id;
            break;

        case 'www.youtube.com':
        case 'youtube.com':
            parse_str($video['query'], $query);
            $video_id = $query['v'];
            $video_src = '//www.youtube.com/embed/' . $video_id;
            break;

        case 'vimeo.com':
        case 'www.vimeo.com':
            $video_id = trim($video['path'], '/');
            $video_src = "//player.vimeo.com/video/" . $video_id;
    }

}

?>

<?php

if (!empty($this->item->keywords)) {
    $keywords = ', ' . $this->item->keywords;
}

$alias = str_replace('-', ' ',$this->item->alias);

$uri = JFactory::getURI();
$full = $uri->toString();

$document = JFactory::getDocument();
$document->addCustomTag('<meta property="og:image" content="' .JURI::base() . $this->item->image1 . '">');
$document->addCustomTag('<meta property="og:url" content="'. $full .'">');
$document->addCustomTag('<meta property="og:title" content="' . $this->item->title . '">');
$document->addCustomTag('<meta property="og:description" content="' . strip_tags($this->item->description) . '">');
$document->addCustomTag('<meta property="og:site_name" content="' . $this->item->title . '">');
$document->addCustomTag('<meta property="og:locale" content="pt_BR">');
$document->addCustomTag('<meta property="og:street-address" content="Rua Rene Sabá, 52 - Sala 207">');
$document->addCustomTag('<meta property="og:postal-code" content="31260010">');
$document->addCustomTag('<meta property="og:city" content="Belo Horizonte">');
$document->addCustomTag('<meta property="og:country-name" content="Jaraguá">');
$document->addCustomTag('<meta property="og:latitude" content="-19.856787">');
$document->addCustomTag('<meta property="og:longitude" content="-43.949514">');
$document->addCustomTag('<meta property="og:email_address" content="contato@sdrummond.com.br">');
$document->addCustomTag('<meta property="og:phone_number" content="(31)2523-0501">');
$document->addCustomTag('<meta property="fb:page_id" content="246873055468106">');

$doc->setMetadata('keywords', $alias . $keywords);

?>

<div id="sp-simpleportfolio" class="sp-simpleportfolio sp-simpleportfolio-view-item">

    <div class="sp-simpleportfolio-details clearfix">

        <div class="sp-simpleportfolio-meta">
            <?php if (!empty($this->item->title)) { ?>
                <div class="sp-simpleportfolio-title">
                    <h2>
                        <?php
                            if (!empty($this->item->url))
                                echo '<a href="'.$this->item->url.'" target="_blank">';
                         ?>
                        <?php echo $this->item->service; ?>
                        <?php
                        if (!empty($this->item->url))
                            echo '</a>';
                        ?>
                    </h2>
                </div>
            <?php } ?>
        </div>

        <div class="sp-simpleportfolio-description">
            <p><?php echo $this->item->description; ?></p>
        </div>

        <?php if (!empty($this->item->url)): ?>
            <div class="sp-simpleportfolio-site">
                <a href="<?php echo $this->item->url; ?>" class="btn button" target="_blank">Clique aqui e confira o site</a>
            </div>
        <?php endif; ?>

    </div>

    <div class="sp-simpleportfolio-image">
        <?php if ($this->item->video) { ?>
            <div class="sp-simpleportfolio-embed">
                <iframe src="<?php echo $video_src; ?>" frameborder="0" webkitAllowFullScreen mozallowfullscreen
                        allowFullScreen></iframe>
                <div class="sp-simpleportfolio-item-image">
                    <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image; ?>"
                         alt="<?php echo $this->item->title; ?>">
                </div>
                <?php if (!empty($this->item->image1)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image1; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image2)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image2; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image3)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image3; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image4)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image4; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image5)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image5; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
            </div>
        <?php } else { ?>
            <?php if ($this->item->image) { ?>
                <!--                <div class="sp-simpleportfolio-item-image">-->
                <!--                    <img class="sp-simpleportfolio-img" src="--><?php //echo $this->item->image; ?><!--"-->
                <!--                         alt="--><?php //echo $this->item->title; ?><!--">-->
                <!--                </div>-->
                <?php if (!empty($this->item->image1)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image1; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image2)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image2; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image3)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image3; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image4)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image4; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image5)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image5; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
                <?php if (!empty($this->item->image6)) { ?>
                    <div class="sp-simpleportfolio-item-image">
                        <img class="sp-simpleportfolio-img" src="<?php echo $this->item->image6; ?>"
                             alt="<?php echo $this->item->title; ?>">
                    </div>
                <?php } ?>
            <?php } else { ?>
                <img class="sp-simpleportfolio-img" src="<?php echo $this->item->thumbnail; ?>"
                     alt="<?php echo $this->item->title; ?>">
            <?php } ?>
        <?php } ?>
    </div>

</div>