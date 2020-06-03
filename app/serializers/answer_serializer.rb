class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :question_id
end
