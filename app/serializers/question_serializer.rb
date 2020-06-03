class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :context, :coin, :answers, :points
end
