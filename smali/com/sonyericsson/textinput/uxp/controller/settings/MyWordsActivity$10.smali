.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->createClearUserDataFromDeviceDialog(Landroid/content/Context;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field final synthetic val$wordsToRemove:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/util/HashSet;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$wordsToRemove:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 478
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$wordsToRemove:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1500(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Ljava/util/HashSet;

    move-result-object v0

    .line 483
    .local v0, "deleteWords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1600(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/util/HashSet;)V

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->clearUserData(Landroid/content/Context;)V

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$settings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1700(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 494
    :cond_0
    return-void

    .line 481
    .end local v0    # "deleteWords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;->val$wordsToRemove:Ljava/util/HashSet;

    .restart local v0    # "deleteWords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    goto :goto_0
.end method
