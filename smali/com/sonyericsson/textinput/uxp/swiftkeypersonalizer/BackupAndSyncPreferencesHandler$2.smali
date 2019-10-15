.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$2;
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
    .line 252
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$2;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;->IDLE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;->access$302(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/BackupAndSyncPreferencesHandler$State;

    .line 256
    return-void
.end method
