.class Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;
.super Ljava/lang/Object;
.source "MoreCandidatesPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CandidateClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->access$100(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 382
    .local v0, "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Lcom/sonyericsson/ned/controller/IBurstHandler;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "select-candidate"

    invoke-direct {v4, v5, v0}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 383
    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 388
    .end local v0    # "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->hide()V

    .line 389
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "consumed":Z
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->access$100(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 396
    .local v0, "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Lcom/sonyericsson/ned/controller/IBurstHandler;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v4, 0x0

    new-instance v5, Lcom/sonyericsson/ned/controller/Command;

    const-string v6, "remove-candidate"

    invoke-direct {v5, v6, v0}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 397
    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    .line 403
    .end local v0    # "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return v1
.end method
