<?php defined('_JEXEC') or die('Restricted access');

$uri = JFactory::getURI();
$full = $uri->toString();

$document = JFactory::getDocument();
$document->addCustomTag('<meta property="og:image" content="' .JURI::base() . 'images/escritorio_sdrummond_tecnologias.jpg" />');
$document->addCustomTag('<meta property="og:url" content="'. $full .'" />');
$document->addCustomTag('<meta property="og:title" content="SDrummond Tecnologias (31) 2523-0501" />');
$document->addCustomTag('<meta property="og:description" content="Oferecemos soluções para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores soluções, através de análise de cada cliente e suas necessidades específicas." />');
$document->addCustomTag('<meta property="og:site_name" content="SDrummond Tecnologias (31) 2523-0501">');
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

foreach ($this->portfolio as $menu) {
    $menu = $menu->path;
}
?>
<div class="clientes">
    <h2>Parceiros</h2>
    <div class="list-clientes">
        <?php foreach ($this->clients as $client): ?>

            <?php

            $data = @getimagesize($client->logo);
            $width = $data[0];
            $height = $data[1];

            if ($height >= $width) {
                $tamanho = 'background-size: auto 75%;';
            } else {
                $tamanho = 'background-size: 75% auto;';
            }

            $backcliente = 'style="background-color: #FFF !important; background: url(' . $client->logo . ') no-repeat center;' . $tamanho . '"';

            $link = 'index.php/' . $menu . '/' . $client->id_portfolio . '-' . $client->alias_portfolio;

            ?>

            <div class="cliente">
                <div class="cliente-det" <?php echo $backcliente; ?>></div>
                <a href="<?php echo $link; ?>">
                    <div>Conheça<br>o Projeto<br><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<script>
    jQuery(function () {
        jQuery(window).on('resize', function () {

            var clienteH = jQuery('.cliente').width();
            jQuery('.cliente').css('height', clienteH);

        }).trigger('resize');
    });
</script>
