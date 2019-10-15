.class public abstract Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
.super Ljava/lang/Object;
.source "KeyCandidateItem.java"


# instance fields
.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->mView:Landroid/view/View;

    .line 16
    return-void
.end method


# virtual methods
.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method abstract highlight()V
.end method

.method abstract unHighlight()V
.end method
