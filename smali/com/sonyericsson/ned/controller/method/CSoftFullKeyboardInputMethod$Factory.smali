.class public Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CSoftFullKeyboardInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1072
    const-class v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;

    invoke-static {}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1073
    const-string v0, "prediction-activated"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1074
    const-string v0, "word-suggestions"

    const-string v1, "manual"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1075
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1076
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1078
    const-string v0, "insert-on-key-down"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1079
    const-string v0, "trace-auto-accept-mode"

    const-string v1, "none"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v0, "candidate-selection-auto-space"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v0, "enable-word-reopening"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v0, "synchronous-trace"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "max-predictive-candidates"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v0, "input-mode"

    const-string v1, "input-mode-text"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v0, "no-prediction-on-digits"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1090
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;

    const-string v1, "word-suggestions"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace-auto-accept-mode"

    .line 1091
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "candidate-selection-auto-space"

    .line 1092
    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "enable-word-reopening"

    .line 1093
    invoke-virtual {p0, v4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "synchronous-trace"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "input-mode"

    .line 1094
    invoke-virtual {p0, v6}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "no-prediction-on-digits"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)V

    return-object v0
.end method
