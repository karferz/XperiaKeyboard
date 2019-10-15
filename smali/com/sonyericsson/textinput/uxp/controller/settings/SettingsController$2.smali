.class Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$2;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->showInputOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$802(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 301
    return-void
.end method
