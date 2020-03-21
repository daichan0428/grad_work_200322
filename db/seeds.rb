# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Skill.create(name:'データアナリシス')
Skill.create(name:'インタビュー')
Skill.create(name:'WEB調査')
Skill.create(name:'データサイエンス・AI')

Theme.create(name:'上市前課題')
Theme.create(name:'上市後課題')
Theme.create(name:'ブランディング')
Theme.create(name:'収益化')

Researcher.create(name:'山根大典', sex:'男', age:35, comment:'やる気あります。仕事ください。')
Researcher.create(name:'コトラー', sex:'男', age:95, comment:'伝説の人です')
Researcher.create(name:'アドラー', sex:'男', age:180, comment:'人の心を読みます')
Researcher.create(name:'いなもり', sex:'男', age:75, comment:'航空会社を再建します')
Researcher.create(name:'ジョブ子', sex:'女', age:21, comment:'インタビューが得意です')

ResearcherSkill.create(researcher_id:1, skill_id:1)
ResearcherSkill.create(researcher_id:2, skill_id:1)
ResearcherSkill.create(researcher_id:2, skill_id:3)
ResearcherSkill.create(researcher_id:2, skill_id:4)
ResearcherSkill.create(researcher_id:3, skill_id:2)
ResearcherSkill.create(researcher_id:3, skill_id:4)
ResearcherSkill.create(researcher_id:4, skill_id:3)
ResearcherSkill.create(researcher_id:4, skill_id:4)
ResearcherSkill.create(researcher_id:5, skill_id:2)

ResearcherTheme.create(researcher_id:1, theme_id:2)
ResearcherTheme.create(researcher_id:2, theme_id:1)
ResearcherTheme.create(researcher_id:2, theme_id:2)
ResearcherTheme.create(researcher_id:2, theme_id:3)
ResearcherTheme.create(researcher_id:2, theme_id:4)
ResearcherTheme.create(researcher_id:3, theme_id:3)
ResearcherTheme.create(researcher_id:3, theme_id:4)
ResearcherTheme.create(researcher_id:4, theme_id:4)
ResearcherTheme.create(researcher_id:5, theme_id:1)
