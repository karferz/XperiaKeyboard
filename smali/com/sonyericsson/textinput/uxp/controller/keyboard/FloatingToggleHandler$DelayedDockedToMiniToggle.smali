.class final Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;
.super Ljava/lang/Object;
.source "FloatingToggleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedDockedToMiniToggle"
.end annotation


# static fields
.field private static final DOCKED_TO_MINI_DELAY:I = 0xc8


# instance fields
.field private final mFloatingToggleHandler:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;)V
    .locals 4
    .param p1, "floatingToggleHandler"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->mFloatingToggleHandler:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->mFloatingToggleHandler:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->access$100(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->mFloatingToggleHandler:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->access$100(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$DelayedDockedToMiniToggle;->mFloatingToggleHandler:Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    .line 244
    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;->access$200(Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler;Ljava/lang/String;)V

    .line 245
    return-void
.end method
