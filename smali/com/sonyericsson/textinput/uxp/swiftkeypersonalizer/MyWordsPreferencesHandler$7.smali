.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;
.super Ljava/lang/Object;
.source "MyWordsPreferencesHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->createClearUserDataFromServerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$7;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;->NONE:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$AlertDialogState;

    .line 175
    return-void
.end method
