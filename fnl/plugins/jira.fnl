{
  1 :letieu/jira.nvim
  :opts {
         :jira {
                  :base "https://your-domain.atlassian.net" ;; Base URL of your Jira instance
                  :email "your-email@example.com"           ;; Your Jira email (Optional for PAT)
                  :token "your-api-token"                   ;; Your Jira API token or PAT
                  :type "basic"                             ;; Authentication type: "basic" (default) or "pat"
                  :limit 200                                ;; Global limit of tasks per view (default: 200)
               }
         :active_sprint_query "project = '%s' AND Sprint IN openSprints() ORDER BY Rank DESC"
         :projects {
                      :CP {
                            :story_point_field "customfield_10038"
                            :queries {
                                        :MyTasks "project = '%s' AND assignee = currentUser() AND statusCategory != Done orderBy updated DESC"
                                        :Backlog "project = '%s' AND statusCategory != DONE orderBy Rank DESC"
                                        :NextSprint "project = '%s' AND Sprint IN futureSprints() ORDER BY Rank DESC"
                                     }
                          }
                   }
        }
}
