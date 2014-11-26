module Policies
  class ApplyHooks
    class << self
      def allowed?(user, issue)
        user ||= User.anonymous
        user.logged? && user.allowed_to?(:edit_issues, issue.project)
      end
    end
  end
end
