.class Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;
.super Ljava/lang/Object;
.source "SingletapKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/KeyMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;

.field final synthetic val$finalMapProperties:[Ljava/lang/String;

.field final synthetic val$finalShifted:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;

    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;->val$finalShifted:Z

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;
    .param p2, "visual"    # Z

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 76
    .local v1, "str":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    .end local v1    # "str":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;->val$finalShifted:Z

    .line 81
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 82
    .local v0, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    return-object v0
.end method
