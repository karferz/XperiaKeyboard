.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;
.super Ljava/lang/Object;
.source "BackupAndSyncPreferencesHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createConfirmDeactivationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->IDLE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->SHOWING_DEACTIVATED_DIALOG:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    goto :goto_0
.end method
