<?php

class TestController extends Controller{


    public function actionIndex()
    {
        $sql = 'select * from bg_cate';
        $res = Db::instance()->query($sql);
        $a = $this->getParent($res, 0);
        print_r($a);exit;
    }



    public function getParent($data, $pId) {
        $tree = '';
        foreach($data as $v) {
            if($v['cate_ParentId'] == $pId) {
                $v['cate_ParentId'] = $this->getParent($data, $v['cate_Id']);
                $tree[] = $v;
            }
        }
        return $tree;
    }

    public function actionTest1() {
        $output = <<<EOT
        <h2>頑張ってほしい</h2><p>　<br>
        「東日本大震災の惨状にショックを受けた。
        チームの調子が悪く落ち込んでいたが、そんなことは本当に大したことではなくなった。
        試合をすることで募金に貢献できたらと思った」　<br>　とキャプテンのリアネル・ピジナット氏 ( 33歳&nbsp; )
        は話した。<br>&nbsp;<br>　試合の結果は4対1の大勝利。<br>　
        「良い試合ができた。この勝利の喜びが『頑張ってほしい』というメッセージとなり日本の被災者のもとに届いたらこれほどうれしいことはない」<
        br>　と続ける。特にテレビで見た観た被災者の忍耐強く穏やかな表情に感動したという。<br>&nbsp;<br>　
        開会式ではFCセルベットのマジッド・ビッシャー会長と菅沼健一在ジュネーブ出張駐在館事務所代表のあいさつに続き、
        １分間の黙とうが東日本大震災の犠牲者に捧げられた。その後、喪章の代わりに日本の旗を腕に着けた選手全員が元気にスタートを切った。
        招待を受けた日本人約350人は、ゴールが決まるごとに手にした日の丸を振り応援。<br>　　
        <br>&nbsp;　また、入場者には全員に赤十字社の募金振り込み先が記入された紙が配られ、
        試合中にはスイス人観客席を中心にボランティアの若者約8人が募金箱を持って回った。多くのスイス人がコインの代わりにお札を入れたという。
        </p>  <br><div>   <img src="http://www.swissinfo.ch/media/cms/images/swissinfo/2011/03/p1010729-29806022.jpg" alt="募金箱を持ってスイス人席を回った8人。小さな缶はすぐに一杯になったという">   <p>募金箱を持ってスイス人席を回った8人。<br>
EOT;
        $matches = array();
        preg_match_all("/<img.+src=('|\")(.+)('|\").*(\/)*>/Uis",htmlspecialchars_decode($output),$matches,PREG_PATTERN_ORDER);
        var_dump($matches);
    }

    public function actionTest2() {
        preg_match_all("|.*<.*>(.*)</b>.*|U", "adasd<b>example: </b>addsd", $out, PREG_PATTERN_ORDER);
        $html = <<<HTML
        <html><link type="text/css" href="../style/base.css" />
        <a href="test.htm?page=1" id="logo">aa</a>as
        <a class="quit" href="www.hao123.com"
HTML;

    }

    public function actionTest3() {
        $db = new Db();
        $s = $db->select('bg_cate');
        var_dump($s);exit;
    }


    public function actionTest4() {
        $news = NewsModel::instance()->getNews();
        var_dump($news);exit;
    }

}