.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/touchtype_fluency/TagSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 248
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/TagSelector;->apply(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/TagSelector;->apply(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method
