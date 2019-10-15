.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createDownloadAlertDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/Set;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

.field final synthetic val$languages:Ljava/util/Set;

.field final synthetic val$tokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->val$tokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->val$languages:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 700
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 701
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setHasAgreedToDictionaryDownload(Z)V

    .line 702
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setHasShownDictionaryDownloadDialog(Z)V

    .line 703
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 704
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->val$tokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .line 705
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->val$tokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 707
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->USER_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;->val$languages:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V

    goto :goto_0
.end method
