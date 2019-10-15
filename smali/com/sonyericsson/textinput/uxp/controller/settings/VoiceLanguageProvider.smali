.class public final Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;
.super Ljava/lang/Object;
.source "VoiceLanguageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static sInitialised:Z

.field private static sVoiceInputSupportedLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sInitialised:Z

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sVoiceInputSupportedLocales:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    sput-object p0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sVoiceInputSupportedLocales:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getVoiceInputSupportedLocales()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sVoiceInputSupportedLocales:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-boolean v0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sInitialised:Z

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->sInitialised:Z

    .line 31
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->requestVoiceInputSupportedLanguages(Landroid/content/Context;)V

    .line 33
    :cond_0
    return-void
.end method

.method private static requestVoiceInputSupportedLanguages(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "langIntent":Landroid/content/Intent;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;

    invoke-direct {v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$1;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
