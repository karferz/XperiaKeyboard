.class final Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;
.super Ljava/lang/Object;
.source "StandAloneKeyboardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardViewKeyPreviewInitializer"
.end annotation


# instance fields
.field private final mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private final mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;)V
    .locals 1
    .param p1, "keyboardView"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .param p2, "popupContainerManager"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 229
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .line 230
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 253
    .local v2, "rootLayout":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 258
    :goto_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 259
    .local v0, "keyboardViewLocation":[I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 260
    new-instance v1, Landroid/graphics/Point;

    aget v3, v0, v4

    aget v4, v0, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 262
    .local v1, "keyboardViewLocationPoint":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->isInitiated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    invoke-virtual {v3, v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 267
    :goto_1
    return-void

    .line 256
    .end local v0    # "keyboardViewLocation":[I
    .end local v1    # "keyboardViewLocationPoint":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    goto :goto_0

    .line 265
    .restart local v0    # "keyboardViewLocation":[I
    .restart local v1    # "keyboardViewLocationPoint":Landroid/graphics/Point;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->setPopupContainerOffset(Landroid/graphics/Point;)V

    goto :goto_1
.end method
