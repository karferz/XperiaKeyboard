.class Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceLanguageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider$LanguageBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "android.speech.extra.SUPPORTED_LANGUAGES"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 54
    :cond_0
    return-void
.end method
