.class public Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "TestHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 133
    const-class v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 134
    const-string v0, "prediction-activated"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static killInstance()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$102(Lcom/sonyericsson/textinput/uxp/test/TestHook;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .line 139
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;-><init>()V

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$102(Lcom/sonyericsson/textinput/uxp/test/TestHook;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .line 146
    :cond_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    const-string v1, "prediction-activated"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$202(Lcom/sonyericsson/textinput/uxp/test/TestHook;Z)Z

    .line 147
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    return-object v0
.end method

.method public createInstanceWithOldParameters()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;-><init>()V

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$102(Lcom/sonyericsson/textinput/uxp/test/TestHook;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .line 155
    :cond_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v0

    return-object v0
.end method
