<?php
/**
 * @var modX $modx
 * @var ContentBlocks $contentBlocks
 * @var array $scriptProperties
 */
if ($modx->event->name == 'ContentBlocks_RegisterInputs') {
    // Load your own class. No need to require cbBaseInput, that's already loaded.
    $path = $modx->getOption('formblocks.core_path', null, MODX_CORE_PATH . 'components/formblocks/');
    require_once($path . 'elements/inputs/selectinput.class.php');
    
    // Create an instance of your input type, passing the $contentBlocks var
    $instance = new SelectInput($contentBlocks);
    
    // Pass back your input reference as key, and the instance as value
    $modx->event->output(array(
        'selectinput' => $instance
    ));
}