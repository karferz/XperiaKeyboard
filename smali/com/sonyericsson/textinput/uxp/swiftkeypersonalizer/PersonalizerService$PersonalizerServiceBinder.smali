.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;
.super Landroid/os/Binder;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizerServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    return-object v0
.end method
