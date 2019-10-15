.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureForced(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

.field final synthetic val$configurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->val$configurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguagePacksConfigured(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$202(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->val$configurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;->val$reason:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 399
    monitor-exit v1

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
