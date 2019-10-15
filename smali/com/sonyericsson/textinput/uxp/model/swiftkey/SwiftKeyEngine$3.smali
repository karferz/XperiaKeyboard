.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$3;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mergeDynamicModels(Ljava/io/File;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to merge dynamic model"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    return-void
.end method
