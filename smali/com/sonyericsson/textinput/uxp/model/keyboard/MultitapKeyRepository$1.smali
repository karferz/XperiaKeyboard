.class Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;
.super Ljava/lang/Object;
.source "MultitapKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/KeyMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;

.field final synthetic val$finalMapProperties:[Ljava/lang/String;

.field final synthetic val$finalShifted:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;

    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->val$finalShifted:Z

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;
    .param p2, "visual"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v1, 0x0

    .line 74
    .local v1, "keyCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 75
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 77
    .local v2, "longPressedCandidates":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->val$finalShifted:Z

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllVisualCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 88
    if-nez v2, :cond_2

    move-object v0, v1

    .line 103
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .end local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_2
    return-object v0

    .line 80
    .restart local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->val$finalShifted:Z

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_5

    .line 95
    if-nez v2, :cond_4

    move-object v0, v1

    :goto_3
    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    .end local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v3, 0x0

    aput-object v2, v0, v3

    goto :goto_3

    .line 99
    .restart local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 100
    move-object v0, v1

    goto :goto_1

    .line 103
    :cond_6
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_2
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    return-object v0
.end method
