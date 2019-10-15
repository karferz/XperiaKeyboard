.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->reset(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguagePacksConfigured(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V

    .line 258
    return-void
.end method
