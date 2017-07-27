<a href="index.php"><{$smarty.const._XO_LA_SEARCH}></a>

&nbsp;<span style="font-weight:bold;">&raquo;&raquo;</span>&nbsp;<{$smarty.const._XO_LA_RESULTS}><br><br>

<{if $total_found != 0}>
    <table class="outer" cellspacing="1" cellpadding="4">
        <tr>
            <th align="center"><{$smarty.const._XO_LA_AVATAR}></th>
            <th align="center"><{$smarty.const._XO_LA_UNAME}></th>
            <th align="center"><{$smarty.const._XO_LA_REALNAME}></th>
            <th align="center"><{$smarty.const._XO_LA_EMAIL}></th>
            <th align="center"><{$smarty.const._XO_LA_PM}></th>
            <th align="center"><{$smarty.const._XO_LA_URL}></th>
            <th align="center"><{$smarty.const._XO_LA_REGDATE}></th
            >
            <th align="center"><{$smarty.const._XO_LA_LASTLOGIN}></th>
            <th align="center"><{$smarty.const._XO_LA_POSTS}></th>
            <{if $is_admin == true}>
                <th align="center"><{$smarty.const._XO_LA_ADMIN}></th>
            <{/if}>
        </tr>
        <{section name=i loop=$users}>
            <tr valign="middle">
                <td class="even"><{$users[i].avatar}></td>
                <td class="odd"><a href="<{$xoops_url}>/userinfo.php?uid=<{$users[i].id}>"><{$users[i].name}></a></td>
                <td class="even"><{$users[i].realname}></td>
                <td align="center" class="odd"><{$users[i].email}></td>
                <td class="even" align="center"><{$users[i].pmlink}></td>
                <td class="odd" align="center"><{$users[i].website}></td>
                <td class="even" align="center"><{$users[i].registerdate}></td>
                <td class="odd" align="center"><{$users[i].lastlogin}></td>
                <td class="even" align="center"><{$users[i].posts}></td>
                <{if $is_admin == true}>
                    <td class="odd" align="center"><{$users[i].adminlink}></td>
                <{/if}>
            </tr>
        <{/section}>
    </table>
    <div style="text-align:center;">
        <{$pagenav}>
        <{$lang_numfound}>
    </div>
<{else}>
    <{$smarty.const._XO_LA_NOFOUND}>
<{/if}>
