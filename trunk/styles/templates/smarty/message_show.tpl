<form action="game.php?page=messages" method="post"><input name="messages" value="1" type="hidden"><table width="100%" style="margin:0px;padding:0px;"><tr><td class="c" colspan="4">{$mg_message_title}</td></tr><tr><th>{$mg_action}</th><th>{$mg_date}</th><th>{$mg_from}</th><th>{$mg_subject}</th></tr>
{foreach key=MessID item=MessInfo from=$MessageList}
<tr>
<th style="width:40px;" rowspan="2">
<input name="showmes{$MessID}" type="hidden" value="1">
<input name="delmes{$MessID}" type="checkbox"></th>
<th>{$MessInfo.time}</th>
<th>{$MessInfo.from}</th>
<th>{$MessInfo.subject}
{if {$MessInfo.type} == 1}
<a href="javascript:f('game.php?page=messages&amp;mode=write&amp;id={$MessInfo.sender}&amp;subject=Re:{$MessInfo.subject|strip_tags}','');" title="Nachricht an {$MessInfo.from|strip_tags} schreiben">
<img src="{$dpath}img/m.gif" border="0"></a>
{/if}
</th></tr>
<tr>
<td colspan="3" class="b">{$MessInfo.text}</td>
</tr>
{/foreach}
<tr>
<th colspan="4">
<input id="fullreports" name="fullreports" type="checkbox">{$mg_show_only_header_spy_reports}</th><input name="mess_type" type="hidden" value="{$MessCategory}"></th>
</tr><tr>
<th colspan="4">
<select id="deletemessages" name="deletemessages">
<option value="deletemarked">{$mg_delete_marked}</option>
<option value="deleteunmarked">{$mg_delete_unmarked}</option>
<option value="deleteall">{$mg_delete_all}</option>
</select><input name="mode" type="hidden" value="delete">
<input value="{$mg_confirm_delete}" type="submit">
</th>
</tr>
</table>
</form>