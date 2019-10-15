.class public Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "RemoveDictionaryWordsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;
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

    .line 196
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$400()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 197
    const-string v0, "prediction-activated"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 198
    return-void
.end method
