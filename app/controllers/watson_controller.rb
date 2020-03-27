class WatsonController < ApplicationController

    require "ibm_watson/authenticators"
    require "ibm_watson/text_to_speech_v1"
    include IBMWatson

    def welcome
        authenticator = IBMWatson::Authenticators::IamAuthenticator.new(
            apikey: ENV["Watson_Key"]
        )
        text_to_speech = TextToSpeechV1.new(
            authenticator: authenticator
        )
        text_to_speech.service_url = "https://api.us-south.text-to-speech.watson.cloud.ibm.com/instances/565cdf45-d8b6-4705-ae30-f9795576293e"

        name = "Dude"

        File.open("app/assets/audio/welcome.wav", "wb") do |audio|
            response = text_to_speech.synthesize(
                text: "Welcome, #{name}",
                accept: "audio/wav",
                voice: "en-GB_KateVoice"
            )
            audio.write(response.result)
            redirect_back(fallback_location:"/")
        end
    end
end