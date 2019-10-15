.class public interface abstract Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;
.super Ljava/lang/Object;
.source "IInputMethodService.java"


# virtual methods
.method public abstract getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract getExtractEditText()Landroid/inputmethodservice/ExtractEditText;
.end method

.method public abstract getWindow()Landroid/app/Dialog;
.end method

.method public abstract isExtractViewShown()Z
.end method

.method public abstract isFullscreenMode()Z
.end method

.method public abstract sendDefaultEditorAction(Z)Z
.end method

.method public abstract sendDownUpKeyEvents(I)V
.end method

.method public abstract switchInputMethod(Ljava/lang/String;)V
.end method
