.class public final Lcom/sonyericsson/textinput/uxp/configuration/VoiceButtonConfig;
.super Ljava/lang/Object;
.source "VoiceButtonConfig.java"


# static fields
.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field private static final IME_OPTION_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"

.field private static final LATIN_IME_PACKAGE:Ljava/lang/String; = "com.android.inputmethod.latin"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 68
    .local v0, "option":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 77
    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/VoiceButtonConfig;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowVoiceButton(Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "isPassword"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x0

    const-string v4, "nm"

    invoke-static {v3, v4, p1}, Lcom/sonyericsson/textinput/uxp/configuration/VoiceButtonConfig;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.inputmethod.latin"

    const-string v4, "noMicrophoneKey"

    .line 59
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/textinput/uxp/configuration/VoiceButtonConfig;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 60
    .local v0, "noMic":Z
    :goto_0
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "noMic":Z
    :cond_1
    move v0, v2

    .line 59
    goto :goto_0

    .restart local v0    # "noMic":Z
    :cond_2
    move v1, v2

    .line 60
    goto :goto_1
.end method
