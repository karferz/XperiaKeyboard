.class public Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "ReopenWordsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;
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

    .line 362
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController;->access$300()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 363
    const-string v0, "prediction-activated"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 364
    const-string v0, "show-prediction-candidates"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 365
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 366
    const-string v0, "enable-word-reopening"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 367
    return-void
.end method
