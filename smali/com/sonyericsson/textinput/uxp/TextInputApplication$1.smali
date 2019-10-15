.class Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;
.super Ljava/lang/Object;
.source "TextInputApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/TextInputApplication;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;->this$0:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;->this$0:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->access$000(Lcom/sonyericsson/textinput/uxp/TextInputApplication;Landroid/content/Context;)V

    .line 173
    return-void
.end method
