from django import forms

from .models import Post

class PostForm(forms.ModelForm):
    
    class Meta:
        #どのモデルを使用するかをMetaで追記
        model = Post
        fields = ('title', 'text',)