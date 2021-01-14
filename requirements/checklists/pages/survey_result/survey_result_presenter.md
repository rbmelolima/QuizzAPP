# Survey Result Presenter

> ## Regras
01. Chamar LoadSurveyResult no método loadData
02. Notificar o isLoadingStream como true antes de chamar o LoadSurveyResult
03. Notificar o isLoadingStream como false no fim do LoadSurveyResult
04. Notificar o surveyResultStream com erro caso o LoadSurveyResult retorne erro
05. Notificar o surveyResultStream com um SurveyResult caso o LoadSurveyResult retorne sucesso
06. Notificar o sessionExpiredStream como true caso o LoadSurveys retorne erro accessDenied
07. Chamar SaveSurveyResult no método save
08. Notificar o isLoadingStream como true antes de chamar o SaveSurveyResult
09. Notificar o isLoadingStream como false no fim do SaveSurveyResult
10. Notificar o surveyResultStream com erro caso o SaveSurveyResult retorne erro
11. Notificar o surveyResultStream com um SurveyResult caso o SaveSurveyResult retorne sucesso
12. Notificar o sessionExpiredStream como true caso o SaveSurveyResult retorne erro accessDenied