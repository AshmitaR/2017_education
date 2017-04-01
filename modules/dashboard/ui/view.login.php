<?php

include_once 'blade/view.login.blade.php';
include_once './common/class.common.php';

?>


<center>
    <div id="form">
        <table calss="table table-bordered">
            <tr>
                <form method="post">
                    <td>
                        <table width="100%" border="0" cellpadding="3" >
                            <tr>
                                <td colspan="3"><strong>Member Login </strong></td>
                            </tr>
                            <tr>
                                <td width="78">User Name (Email)</td>
                                <td width="6">::</td>
                                <td width="294"><input name="txtEmail" type="text" id="txtEmail"></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>::</td>
                                <td><input name="txtPassword" type="password" id="txtPassword"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><input type="submit" name="login" value="Login"></td>
                            </tr>
                        </table>
                    </td>
                </form>
            </tr>
        </table>
    </div>    
</center>
