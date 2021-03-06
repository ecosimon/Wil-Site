from django import forms
from .models import *

class NewsLetterSignUp(forms.Form):
    """
    This module is for creating a Form for NewsLetter sign up, when the user submits their 
    data, the data is then cleaned when form.is_valid is called upon. The data is cleaned and 
    returned if it passes the validations.
	
    Attributes:
        name - takes in a String values
        email - takes in a String value
    """
    email = forms.CharField(max_length=255, widget=forms.TextInput(attrs={'placeholder': 'SampleEmail@blah.com'}))
	
    def clean_email(self):
        """
        This clean method overides the forms clean_method. Its purpose is to validate 
        the data and returns it.
        If the input is empty and the user attempts to submit, it will raise a validation error.
        Other wise if the email already exists in the database a validation error will be raised.
        """
        cd_email = self.cleaned_data.get('email')
		
        if not cd_email:
            raise forms.ValidationError('Email is required for submission!')
        if (NewsletterSub.objects.filter(email=cd_email).count() > 0):
            raise forms.ValidationError('This email already exists!')
        return cd_email
		