<?php
class Controller {
    var $vars = array();
    var $js = array();
    var $css = array();
    
    function __construct() {
        
    }
    function set($tab){
        $this->vars = $tab;
    }
    
    function render($filename){
        
        require_once(WEBROOT.'tpl/SmartyBC.class.php');
        $tpl = new SmartyBC();
        $tpl->assign($this->vars);
        $tpl->assign('WEBROOT', WEBROOT);
        $tpl->assign('APPROOT', APPROOT);
        $tpl->assign('ROOT', ROOT);
        $tpl->display(WEBAPPROOT.'views/header.tpl');
        $tpl->display(WEBAPPROOT.'views/nav-bar.tpl');
        $tpl->display(WEBAPPROOT.'views/'.strtolower (get_class($this)).'/'.$filename.'.tpl');
        $modal_tpl = WEBAPPROOT.'views/login-register/modal_login.tpl';
        $tpl->assign('modal_tpl', $modal_tpl);
        $tpl->display(WEBAPPROOT.'views/footer.tpl');


        //require(WEBAPPROOT.'views/'.strtolower (get_class($this)).'/'.$filename.'.html');
    }
    
    function includeFile($filename){
        require(WEBAPPROOT.'views/'.strtolower (get_class($this)).'/'.$filename.'.php');
    }
    
    function load_css(){
        $this->css[] = 'http://fonts.googleapis.com/css?family=Bree+Serif';
        $this->css[] = 'http://fonts.googleapis.com/css?family=Philosopher';
        $this->css[] = 'http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300';
        $this->css[] = $WEBROOT."ressources/css/bootstrap.min.css";
        $this->css[] = $WEBROOT."ressources/css/font-awesome.min.css";
        $this->css[] = $WEBROOT."ressources/css/style.css";
        
    }
    
    function load_js(){ 
    }
    

}