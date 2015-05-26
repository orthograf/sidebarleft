{if E::IsUser()}
    <div class="sidebarleft">
        <div class="sidebar-lf">
            <ul class="nav">
                <li><a data-toggle="sidebar-l" data-target=".sidebar-left"><i class="fa fa-reorder"></i></a><li>
                <li><a class="sbli" href="{E::User()->getProfileUrl()}"><img src="{E::User()->getAvatarUrl(32)}"/></a><li>
                <li><a href="#" data-toggle="modal" data-target="#modal-write" class="hvr-leftline-reveal"><i class="fa fa-pencil"></i></a><li>
                <li><a id="new_messages" href="{router page='talk'}" class="hvr-leftline-reveal"><i class="fa fa-envelope-o"></i><li>
                <li><a href="{E::User()->getProfileUrl()}created/topics/" class="hvr-leftline-reveal"><i class="fa fa-file-o"></i></a><li>
                <li><a href="{E::User()->getProfileUrl()}favourites/topics/" class="hvr-leftline-reveal"><i class="fa fa-star-o"></i></a><li>
                <li><a href="{router page='settings'}" class="hvr-leftline-reveal"><i class="fa fa-cogs"></i></a><li>
                <li><a href="/login/exit/?security_key={$ALTO_SECURITY_KEY}" class="hvr-leftline-reveal"><i class="fa fa-sign-out"></i></a><li>
            </ul>
        </div> 
        
        <div class="sidebar-l sidebar-left sidebar-animate">
            <ul class="nav">
                <li><a href="{E::User()->getProfileUrl()}">{E::User()->getProfileName()}</a></li>
                <li><a href="#" data-toggle="modal" data-target="#modal-write">{$aLang.topic_topic_create}</a></li>
                <li><a id="new_messages" href="{router page='talk'}">{$aLang.talk_menu_inbox}<span class="new-messages"></span></a></li>
                <li><a href="{E::User()->getProfileUrl()}created/topics/">{$aLang.user_menu_publication}</a></li>
                <li><a href="{E::User()->getProfileUrl()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a></li>
                <li><a href="{router page='settings'}">{$aLang.settings_menu_tuning_short}</a></li>
                <li><a href="/login/exit/?security_key={$ALTO_SECURITY_KEY}">{$aLang.exit}</a></li>
            </ul>
        </div>
    </div>
{/if}
