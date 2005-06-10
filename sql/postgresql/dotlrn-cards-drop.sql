--
-- Copyright (C) 2004 University of Valencia
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
--
--   Procedures to support the dotlrn cards
--
--   @author fransola (fransola@uv.es)
--   @creation-date 2004-10-10
--   @version $Id: dotlrn-cards-drop.sql,v 0.1 2004/10/10

select acs_sc_impl__delete(
           'dotlrn_applet',             -- impl_contract_name
           'dotlrn_cards'                -- impl_name
);


-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'GetPrettyName'
);

-- AddApplet
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddApplet'
);

-- RemoveApplet
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveApplet'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddAppletToCommunity'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveAppletFromCommunity'
);

-- AddUser
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddUser'
);

-- RemoveUser
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveUser'
);

-- AddUserToCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddUserToCommunity'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__delete (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveUserFromCommunity'
);

-- AddPortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_cards',
        'AddPortlet'
    );

-- RemovePortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_cards',
        'RemovePortlet'
);

-- Clone
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_cards',
        'Clone'
);


-- Add the binding
select acs_sc_binding__delete (
            'dotlrn_applet',
            'dotlrn_cards'
);
