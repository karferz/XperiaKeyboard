.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

.field final synthetic val$readyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;->val$readyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWordsRemoved()V
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;->val$readyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;->dictionaryReady()V

    .line 2467
    return-void
.end method
