.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->onLanguagePacksConfigured(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->access$2900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3000(Landroid/content/Context;Z)V

    .line 2939
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->access$3100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->access$3200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .line 2940
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->access$3300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Ljava/util/Set;

    move-result-object v3

    .line 2939
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V

    .line 2942
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2943
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .line 2944
    monitor-exit v1

    .line 2945
    return-void

    .line 2944
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
