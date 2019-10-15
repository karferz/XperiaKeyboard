.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadDictionaryCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0

    .prologue
    .line 3200
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;

    .prologue
    .line 3200
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    .line 3210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    .line 3212
    :cond_0
    return-void
.end method
