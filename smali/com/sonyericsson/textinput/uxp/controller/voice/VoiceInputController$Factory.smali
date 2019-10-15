.class public Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "VoiceInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 104
    const-string v0, "voice-input-start-from-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 105
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;

    const-string v1, "voice-input-start-from-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;-><init>(Z)V

    return-object v0
.end method
