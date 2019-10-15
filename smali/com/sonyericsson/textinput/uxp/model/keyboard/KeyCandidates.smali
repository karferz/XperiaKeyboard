.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
.super Ljava/lang/Object;
.source "KeyCandidates.java"


# instance fields
.field public allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field public allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field public primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field public final secondaryCandidatesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field public final secondaryVisualCandidatesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "primary"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "primaryVisualCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "secondaryCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "secondaryVisualCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 82
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 83
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "baseCharacter"    # Lcom/sonyericsson/ned/model/CodePointString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "candidatesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, v1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 100
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 101
    .local v0, "baseCharCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "secondaryCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "secondaryVisualCandidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 90
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 91
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 92
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 93
    invoke-static {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 95
    return-void
.end method

.method private static combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p0, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "secondary"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 132
    .local v0, "all":[Lcom/sonyericsson/ned/model/CodePointString;
    aput-object p0, v0, v2

    .line 133
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 135
    .end local v0    # "all":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    new-array v0, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 136
    .restart local v0    # "all":[Lcom/sonyericsson/ned/model/CodePointString;
    aput-object p0, v0, v2

    goto :goto_0
.end method

.method private static removeDigits(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "digits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    .line 112
    .local v1, "string":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v1    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    .line 118
    .restart local v1    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v1    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V
    .locals 5
    .param p1, "additionalCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "additionalVisualCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "beforeDigit"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v2, :cond_1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "digits":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "visualDigits":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 160
    if-eqz p3, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->removeDigits(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->removeDigits(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 170
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 197
    .end local v0    # "digits":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    .end local v1    # "visualDigits":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v2, :cond_2

    .line 179
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 186
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v2, :cond_3

    .line 187
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 194
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 181
    :cond_2
    new-array v2, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    aput-object p1, v2, v3

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_1

    .line 189
    :cond_3
    new-array v2, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    aput-object p2, v2, v3

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_2
.end method

.method public getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getSecondaryVisualCandidates()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "removeIndex"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryCandidatesList:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->secondaryVisualCandidatesList:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mPrimaryVisualCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->mSecondaryVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->combine(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 215
    :cond_0
    return-void
.end method
