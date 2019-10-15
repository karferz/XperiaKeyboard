.class public Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
.super Ljava/lang/Object;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateList"
.end annotation


# static fields
.field private static final EMPTY_INT_SEQUENCE_ARRAY:[I


# instance fields
.field private mActiveIndex:I

.field private mActiveStyle:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

.field private mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mDirection:I

.field private mHighlightIndex:I

.field private mIsSplit:Z

.field private mMaxVisualSuggestions:I

.field private mVisualCandidateWidths:[I

.field private mVisualCandidates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->EMPTY_INT_SEQUENCE_ARRAY:[I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "maxSuggestions"    # I
    .param p2, "isSplit"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 1008
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->EMPTY_INT_SEQUENCE_ARRAY:[I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    .line 1010
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->EMPTY_INT_SEQUENCE_ARRAY:[I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    .line 1017
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    .line 1022
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveIndex:I

    .line 1024
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveStyle:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    .line 1031
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    .line 1032
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mIsSplit:Z

    .line 1033
    return-void
.end method

.method private getCenterVisualIndex()I
    .locals 2

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->isRTLDirectionForSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isRTLDirectionForSplit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1232
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mDirection:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mIsSplit:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortCandidates()V
    .locals 10

    .prologue
    const/4 v3, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1202
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    .line 1205
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mDirection:I

    if-ne v6, v4, :cond_2

    move v2, v3

    .line 1206
    .local v2, "rtlModifier":I
    :goto_0
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    if-eq v6, v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    if-le v3, v6, :cond_3

    :cond_0
    move v0, v5

    .line 1208
    .local v0, "centerIndex":I
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getCenterVisualIndex()I

    move-result v1

    .line 1209
    .local v1, "centerVisualIndex":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aput v0, v3, v1

    .line 1210
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    mul-int/lit8 v3, v2, 0x1

    sub-int v7, v1, v3

    if-nez v0, :cond_4

    move v3, v4

    :goto_2
    aput v3, v6, v7

    .line 1211
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    mul-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v1

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    :goto_3
    aput v4, v3, v6

    .line 1214
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1220
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aput v8, v3, v5

    .line 1221
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aput v9, v3, v9

    .line 1229
    :cond_1
    :goto_4
    return-void

    .end local v0    # "centerIndex":I
    .end local v1    # "centerVisualIndex":I
    .end local v2    # "rtlModifier":I
    :cond_2
    move v2, v4

    .line 1205
    goto :goto_0

    .line 1206
    .restart local v2    # "rtlModifier":I
    :cond_3
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    goto :goto_1

    .restart local v0    # "centerIndex":I
    .restart local v1    # "centerVisualIndex":I
    :cond_4
    move v3, v5

    .line 1210
    goto :goto_2

    .line 1211
    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    .line 1222
    :cond_6
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    if-ne v3, v9, :cond_1

    .line 1223
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->isRTLDirectionForSplit()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1224
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aput v8, v3, v5

    goto :goto_4

    .line 1226
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aput v8, v3, v8

    goto :goto_4
.end method


# virtual methods
.method public calculateCandidateWidths(ILcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;ZI)V
    .locals 3
    .param p1, "keyboardWidth"    # I
    .param p2, "scaler"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
    .param p3, "isSplit"    # Z
    .param p4, "splitGap"    # I

    .prologue
    .line 1048
    if-eqz p3, :cond_0

    .line 1049
    sub-int/2addr p1, p4

    .line 1052
    :cond_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    .line 1055
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    invoke-virtual {p2, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->setup(II)V

    .line 1056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    if-ge v0, v1, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->allocate(I)I

    move-result v2

    aput v2, v1, v0

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    return-void
.end method

.method public getActiveIndex()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveIndex:I

    return v0
.end method

.method public getActiveStyle()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveStyle:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    return-object v0
.end method

.method public getCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCandidateWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1175
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    array-length v1, v2

    .line 1176
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1177
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 1178
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v2

    .line 1182
    :goto_1
    return v2

    .line 1176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1182
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCandidateX(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1156
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    array-length v0, v2

    .line 1157
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "visualIndex":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1158
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 1159
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateX(I)I

    move-result v2

    .line 1162
    :goto_1
    return v2

    .line 1157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHiddenCandidates()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 6

    .prologue
    .line 1072
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v3, v4

    .line 1073
    .local v3, "totalCount":I
    const/4 v4, 0x0

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 1076
    .local v0, "hiddenCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x0

    .local v2, "j":I
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1077
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    .line 1076
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    return-object v0
.end method

.method public getHighlightedIndex()I
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    return v0
.end method

.method public getMaxVisualSuggestions()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    return v0
.end method

.method public getTotalNumberOfCandidates()I
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    return v0
.end method

.method public getVisualActiveIndex()I
    .locals 3

    .prologue
    .line 1147
    const/4 v0, 0x0

    .local v0, "visualIndex":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1148
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveIndex:I

    if-ne v1, v2, :cond_0

    .line 1152
    .end local v0    # "visualIndex":I
    :goto_1
    return v0

    .line 1147
    .restart local v0    # "visualIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p1, "visualCandidateIndex"    # I

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aget v0, v1, p1

    .line 1097
    .local v0, "i":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v1, v1, v0

    .line 1101
    .end local v0    # "i":I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getVisualCandidateWidth(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1187
    const/4 v0, 0x0

    .line 1189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getVisualCandidateWidthArray()[I
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidateWidths:[I

    return-object v0
.end method

.method public getVisualCandidateX(I)I
    .locals 3
    .param p1, "visualIndex"    # I

    .prologue
    .line 1166
    const/4 v1, 0x0

    .line 1167
    .local v1, "x":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 1169
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidth(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1171
    :cond_0
    return v1
.end method

.method public getVisualHighlightedIndex()I
    .locals 3

    .prologue
    .line 1125
    const/4 v0, 0x0

    .local v0, "visualIndex":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1126
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mVisualCandidates:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    if-ne v1, v2, :cond_0

    .line 1130
    .end local v0    # "visualIndex":I
    :goto_1
    return v0

    .line 1125
    .restart local v0    # "visualIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getVisualNumberOfCandidates()I
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->sortCandidates()V

    .line 1114
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getCenterVisualIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveIndex(ILcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "activeStyle"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    .prologue
    .line 1134
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveIndex:I

    .line 1135
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mActiveStyle:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    .line 1136
    return-void
.end method

.method public setCandidateList([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "words"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->sortCandidates()V

    .line 1040
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 1109
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mDirection:I

    .line 1110
    return-void
.end method

.method public setHighlightedIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1121
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mHighlightIndex:I

    .line 1122
    return-void
.end method

.method protected setMaxVisualCandidates(I)V
    .locals 0
    .param p1, "maxCandidates"    # I

    .prologue
    .line 1241
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mMaxVisualSuggestions:I

    .line 1242
    return-void
.end method

.method protected setSplit(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 1245
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->mIsSplit:Z

    .line 1246
    return-void
.end method
