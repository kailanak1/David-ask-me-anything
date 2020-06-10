class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :context, :coin, :points, :answers
end
