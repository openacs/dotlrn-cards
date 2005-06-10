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
--   @version $Id: dotlrn-cards-create.sql,v 0.1 2004/10/10

-- create the implementation
select acs_sc_impl__new (
                'dotlrn_applet',
                'dotlrn_cards',
                'dotlrn_cards'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'GetPrettyName',
               'dotlrn_cards::get_pretty_name',
               'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddApplet',
               'dotlrn_cards::add_applet',
               'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveApplet',
               'dotlrn_cards::remove_applet',
               'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddAppletToCommunity',
               'dotlrn_cards::add_applet_to_community',
               'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveAppletFromCommunity',
               'dotlrn_cards::remove_applet_from_community',
               'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddUser',
               'dotlrn_cards::add_user',
               'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveUser',
               'dotlrn_cards::remove_user',
               'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'AddUserToCommunity',
               'dotlrn_cards::add_user_to_community',
               'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
               'dotlrn_applet',
               'dotlrn_cards',
               'RemoveUserFromCommunity',
               'dotlrn_cards::remove_user_from_community',
               'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_cards',
        'AddPortlet',
        'dotlrn_cards::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_cards',
        'RemovePortlet',
        'dotlrn_cards::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_cards',
        'Clone',
        'dotlrn_cards::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_cards',
        'ChangeEventHandler',
        'dotlrn_cards::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
            'dotlrn_applet',
            'dotlrn_cards'
);
