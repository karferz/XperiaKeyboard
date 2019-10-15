.class public Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SwapPunctuationsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;
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

    .line 178
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 179
    const-string v0, "smart-punctuation"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 180
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;-><init>()V

    return-object v0
.end method
