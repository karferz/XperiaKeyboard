.class final Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;
.super Ljava/lang/Object;
.source "KeyPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PopupHider"
.end annotation


# instance fields
.field private final mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V
    .locals 1
    .param p1, "popupWindow"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .line 1151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$PopupHider;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->hide(Z)V

    .line 1159
    return-void
.end method
