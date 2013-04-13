{#extends file='layout-with-cart.tpl'#}
{#block name='head'#}
{#call_webservice path="details/unigene" data=["query1"=>$unigene_feature_id] assign='data'#}
{#/block#}
{#block name='body'#}

<div class="row">
    <div class="large-12 columns panel">
        <h1>{#$data.unigene.uniquename#}</h1>
        <h5>last modified: {#$data.unigene.timelastmodified#}</h5>
    </div>
</div>

<div class="row">        
    <div class="large-12 columns panel">
        <p>known isoforms:</p>
        <ul>
            {#foreach $data.unigene.isoforms as $isoform#}
            <li>
                <a href='{#$AppPath#}/isoform-details/byId/{#$isoform.feature_id#}'>{#$isoform.uniquename#}</a></td>
            </li>
            {#/foreach#}
        </ul>
    </div>
</div>

{#/block#}