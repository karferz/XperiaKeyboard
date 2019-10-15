.class public Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"


# static fields
.field private static final DELAY_IN_MS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;->setContentView(I)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method
