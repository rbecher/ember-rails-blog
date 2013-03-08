module AuthenticationsHelper

  def provider_name(provider)
    provider = provider.to_s
    case provider
      when 'open_id'
        "OpenID"
      when 'google_oauth2'
        "Google"
      when 'linkedin_oauth2'
        "LinkedIn"
      else
        provider.titleize
    end
  end
end
