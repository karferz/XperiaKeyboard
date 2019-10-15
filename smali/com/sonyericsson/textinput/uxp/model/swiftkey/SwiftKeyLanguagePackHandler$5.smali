.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$5;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createFailDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$5;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$902(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z

    .line 752
    return-void
.end method
