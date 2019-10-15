.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;
.super Ljava/lang/Object;
.source "BackupAndSyncPreferencesHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->createDeactivatedDialog()V
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
    .line 303
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->IDLE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;)V

    .line 312
    return-void
.end method
