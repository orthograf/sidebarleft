{if E::IsUser()}
    <div class="sidebar-lf">
        <a href="#" data-toggle="sidebar-l" data-target=".sidebar-left"><i class="fa fa-reorder"></i></a>
        <a href="{E::User()->getProfileUrl()}" class="hvr-leftline-reveal"><i class="fa fa-user"></i></a>
        <a href="#" data-toggle="modal" data-target="#modal-write" class="hvr-leftline-reveal"><i class="fa fa-pencil"></i></a>
        <a id="new_messages" href="/talk/" class="hvr-leftline-reveal"><i class="fa fa-envelope-o"></i><span class="new-messages"></span></a></li>
        <a href="{E::User()->getProfileUrl()}created/topics/" class="hvr-leftline-reveal"><i class="fa fa-file-o"></i></a>
        <a href="{E::User()->getProfileUrl()}favourites/topics/" class="hvr-leftline-reveal"><i class="fa fa-star-o"></i></a>
        <a href="{router page='settings'}" class="hvr-leftline-reveal"><i class="fa fa-cogs"></i></a>
        <a href="/login/exit/?security_key={$ALTO_SECURITY_KEY}" class="hvr-leftline-reveal"><i class="fa fa-sign-out"></i></a>

        <div class="sidebar-l sidebar-left sidebar-animate">
            <ul class="nav navbar-stacked">
                <li><a href="{E::User()->getProfileUrl()}">{$aLang.user_menu_profile}</a></li>
                <li><a href="#" data-toggle="modal" data-target="#modal-write">{$aLang.topic_topic_create}</a></li>
                <li><a id="new_messages" href="/talk/">{$aLang.talk_menu_inbox}<span class="new-messages"></span></a></li>
                <li><a href="{E::User()->getProfileUrl()}created/topics/">{$aLang.user_menu_publication}</a></li>
                <li><a href="{E::User()->getProfileUrl()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a></li>
                <li><a href="{router page='settings'}">{$aLang.settings_menu_tuning_short}</a></li>
                <li><a href="/login/exit/?security_key={$ALTO_SECURITY_KEY}">{$aLang.exit}</a></li>
            </ul>
        </div>
    </div>
{/if}
