.class Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;
.super Ljava/lang/Object;
.source "SoftFullKeyboardKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/KeyMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;

.field final synthetic val$finalMapProperties:[Ljava/lang/String;

.field final synthetic val$finalShifted:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;->this$0:Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;

    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;->val$finalShifted:Z

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;
    .param p2, "visual"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 87
    .local v0, "str":Lcom/sonyericsson/ned/model/CodePointString;
    new-array v2, v5, [Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v0, v2, v4

    .line 99
    .end local v0    # "str":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v2

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;->val$finalShifted:Z

    .line 92
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 93
    .local v1, "text":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v1, :cond_1

    .line 94
    new-array v2, v5, [Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v2, v4

    goto :goto_0

    .line 99
    .end local v1    # "text":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;->val$finalMapProperties:[Ljava/lang/String;

    return-object v0
.end method
