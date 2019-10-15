.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;
    }
.end annotation


# static fields
.field private static final KEY_STATE_AUXILIARY:[I

.field private static final KEY_STATE_AUXILIARY_PRESSED:[I

.field private static final KEY_STATE_BASIC:[I

.field private static final KEY_STATE_BASIC_PRESSED:[I

.field private static final KEY_STATE_FUNCTION:[I

.field private static final KEY_STATE_FUNCTION_LOCKED:[I

.field private static final KEY_STATE_FUNCTION_PRESSED:[I

.field private static final KEY_STATE_FUNCTION_PRESSED_LOCKED:[I

.field private static final KEY_STATE_SPACE:[I

.field private static final KEY_STATE_SPACE_PRESSED:[I


# instance fields
.field private isDecoreLabel:Z

.field private mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHasColor:Z

.field private mIconHighlight:Landroid/graphics/drawable/Drawable;

.field private mIconPreview:Landroid/graphics/drawable/Drawable;

.field private mIsLocked:Z

.field private mIsPressed:Z

.field private mKeyTextScaleFactor:F

.field private mLongPressedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

.field public mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mOn:Z

.field private mSecondaryLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mSecondaryPrints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

.field private mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

.field private mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

.field private mShiftedSecondaryPrints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

.field private mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

.field private mVisualSecondaryPrints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

.field private mXKeyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v2, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_BASIC:[I

    .line 52
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_BASIC_PRESSED:[I

    .line 56
    new-array v0, v3, [I

    const v1, 0x7f010024

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_AUXILIARY:[I

    .line 60
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_AUXILIARY_PRESSED:[I

    .line 64
    new-array v0, v3, [I

    const v1, 0x7f010025

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION:[I

    .line 68
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_PRESSED:[I

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_LOCKED:[I

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_PRESSED_LOCKED:[I

    .line 80
    new-array v0, v3, [I

    const v1, 0x7f010028

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_SPACE:[I

    .line 84
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_SPACE_PRESSED:[I

    return-void

    .line 60
    :array_0
    .array-data 4
        0x7f010024
        0x10100a7
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x10100a7
        0x7f010025
    .end array-data

    .line 72
    :array_2
    .array-data 4
        0x7f010027
        0x7f010025
    .end array-data

    .line 76
    :array_3
    .array-data 4
        0x7f010027
        0x10100a7
        0x7f010025
    .end array-data

    .line 84
    :array_4
    .array-data 4
        0x7f010028
        0x10100a7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "normalCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "shiftedCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 103
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 142
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 144
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 154
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel:Z

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 163
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 164
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-direct {v0, p1, v1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 165
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-direct {v0, p2, v1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;)V

    .line 97
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    .line 99
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 101
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 103
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 142
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 144
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 146
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 154
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel:Z

    .line 170
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 171
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 172
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 173
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 174
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 175
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->copyArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->copyArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->copyArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->copyArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 180
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextScaleFactor:F

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextScaleFactor:F

    .line 181
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLongPressedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLongPressedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 182
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 183
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 185
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHighlight:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHighlight:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHighlight:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-boolean v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHasColor:Z

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHasColor:Z

    .line 190
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    array-length v0, v2

    .line 191
    .local v0, "length":I
    :goto_0
    new-array v2, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .line 192
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :cond_0
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyType:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyType:I

    .line 197
    iget-boolean v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 198
    iget-boolean v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 199
    iget-boolean v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 201
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryLabel:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 202
    return-void

    .end local v0    # "length":I
    :cond_1
    move v0, v1

    .line 190
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;)V
    .locals 2
    .param p1, "keyTemplate"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .param p2, "secondaryStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;)V

    .line 97
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 103
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 142
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 144
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 154
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel:Z

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->createKeyCandidates()V

    .line 207
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    .line 208
    return-void
.end method

.method private addCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "candidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "visualCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 914
    if-eqz p1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->add(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v0, :cond_0

    .line 917
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 920
    :cond_0
    return-void
.end method

.method private addSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "secondaryPrint"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 950
    if-eqz p1, :cond_1

    .line 951
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_1
    return-void
.end method

.method private addShiftedCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "shiftedCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "visualShiftedCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->add(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    if-nez v0, :cond_0

    .line 908
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 911
    :cond_0
    return-void
.end method

.method private addShiftedSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "shiftedSecondaryPrint"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 941
    if-eqz p1, :cond_1

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_1
    return-void
.end method

.method private addShiftedVisualSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "shiftedVisualSecondaryPrint"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 923
    if-eqz p1, :cond_1

    .line 924
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_1
    return-void
.end method

.method private addVisualSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "visualSecondaryPrint"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 932
    if-eqz p1, :cond_1

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_1
    return-void
.end method

.method private copyArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "mSecondaryPrints2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    .local p2, "mSecondaryPrints3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "mSecondaryPrints2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .restart local p1    # "mSecondaryPrints2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 234
    .local v0, "string":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v0    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 237
    :cond_2
    return-void
.end method

.method private createKeyCandidates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->split(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isCommand()Z

    move-result v2

    .line 247
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->split(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 249
    return-void
.end method

.method public static getBasicDrawableState()[I
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_BASIC:[I

    return-object v0
.end method

.method private static getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p0, "str"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 211
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0
.end method

.method private getSecondaryPrint(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "shifted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1024
    .local v0, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 1032
    :cond_0
    :goto_0
    return-object v0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getSecondaryPrintLabel(ZI)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p1, "shifted"    # Z
    .param p2, "index"    # I

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabels(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1142
    .local v0, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1146
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private getSecondaryPrintLabels(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "shifted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-object v0

    .line 1054
    :cond_1
    if-eqz p1, :cond_3

    .line 1055
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    goto :goto_0

    .line 1067
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private overrideKeyContent(Landroid/content/res/TypedArray;)V
    .locals 16
    .param p1, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 253
    const/4 v13, 0x4

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 253
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 255
    .local v4, "label":Lcom/sonyericsson/ned/model/CodePointString;
    const/16 v13, 0xb

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 255
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 257
    .local v7, "shiftedLabel":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v13, 0x6

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 257
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 259
    .local v1, "candidatesString":Lcom/sonyericsson/ned/model/CodePointString;
    const/16 v13, 0x8

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 259
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 261
    .local v6, "shiftedCandidatesString":Lcom/sonyericsson/ned/model/CodePointString;
    const/16 v13, 0x9

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 261
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v11

    .line 263
    .local v11, "visualCandidatesString":Lcom/sonyericsson/ned/model/CodePointString;
    const/16 v13, 0xa

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 263
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    .line 266
    .local v9, "shiftedVisualCandidatesString":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    .line 267
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 268
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v4, v13, v14

    const/4 v14, 0x4

    .line 269
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 270
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    .line 266
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 271
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 272
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 274
    const/4 v13, 0x3

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 276
    const/4 v13, 0x5

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    const/4 v14, 0x2

    aput-object v11, v13, v14

    const/4 v14, 0x3

    aput-object v1, v13, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 279
    const/16 v13, 0x10

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 279
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 282
    const/16 v13, 0xd

    .line 283
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    .line 282
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 284
    .local v5, "secondaryPrints":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v5, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    if-nez v13, :cond_7

    .line 286
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    .line 290
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-static {v13, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 293
    :cond_0
    const/16 v13, 0xf

    .line 294
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    .line 293
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 295
    .local v8, "shiftedSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v8, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    if-nez v13, :cond_8

    .line 297
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    .line 301
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-static {v13, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 304
    :cond_1
    const/16 v13, 0xc

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    .line 304
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v12

    .line 306
    .local v12, "visualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v12, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    if-nez v13, :cond_9

    .line 308
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 312
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-static {v13, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 315
    :cond_2
    const/16 v13, 0xe

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 316
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v10

    .line 318
    .local v10, "shiftedVisualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v10, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    if-nez v13, :cond_a

    .line 320
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    .line 324
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-static {v13, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 327
    :cond_3
    const/4 v13, 0x7

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 327
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLongPressedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 331
    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v13, :cond_4

    .line 334
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel:Z

    .line 337
    :cond_4
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 338
    .local v2, "iconId":I
    if-eqz v2, :cond_b

    .line 339
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconId:I

    .line 344
    :cond_5
    :goto_4
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 346
    .local v3, "iconPreviewId":I
    if-eqz v3, :cond_c

    .line 347
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreviewId:I

    .line 356
    :cond_6
    :goto_5
    if-eqz v4, :cond_d

    const-string v13, "|"

    invoke-virtual {v4, v13}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 357
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 363
    :goto_6
    return-void

    .line 288
    .end local v2    # "iconId":I
    .end local v3    # "iconPreviewId":I
    .end local v8    # "shiftedSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v10    # "shiftedVisualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v12    # "visualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 299
    .restart local v8    # "shiftedSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 310
    .restart local v12    # "visualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 322
    .restart local v10    # "shiftedVisualSecondaryPrint":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 340
    .restart local v2    # "iconId":I
    :cond_b
    if-eqz v4, :cond_5

    .line 341
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconId:I

    goto :goto_4

    .line 348
    .restart local v3    # "iconPreviewId":I
    :cond_c
    if-eqz v4, :cond_6

    .line 349
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreviewId:I

    goto :goto_5

    .line 359
    :cond_d
    const/4 v13, 0x4

    new-array v13, v13, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    .line 360
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 361
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getFirstCharAsString(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v15, v13, v14

    .line 359
    invoke-static {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_6
.end method

.method private setLabel(Lcom/sonyericsson/ned/model/CodePointString;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 1
    .param p1, "label"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "labelStyle"    # I
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "iconPreview"    # Landroid/graphics/drawable/Drawable;
    .param p5, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 563
    invoke-virtual {p5, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v0

    invoke-static {p3, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->setLabel(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 564
    invoke-virtual {p5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyPreviewLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v0

    invoke-static {p4, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->setLabel(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconPreview(Landroid/graphics/drawable/Drawable;)V

    .line 565
    return-void
.end method

.method private split(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .locals 11
    .param p1, "candidatesStr"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "labelsStr"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "isMeta"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 739
    const/4 v5, 0x0

    .line 740
    .local v5, "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v6, 0x0

    .line 741
    .local v6, "secondaryLabels":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v3, 0x0

    .line 742
    .local v3, "primary":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v4, 0x0

    .line 743
    .local v4, "primaryLabel":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz p1, :cond_0

    .line 744
    if-eqz p2, :cond_1

    sget-object v9, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 745
    invoke-virtual {p2, v9}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v9

    if-nez v9, :cond_1

    move v1, v7

    .line 746
    .local v1, "hasSpecialLabels":Z
    :goto_0
    invoke-static {p1, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 747
    .local v0, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v1, :cond_2

    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->splitCandidates(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 749
    .local v2, "labels":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    if-eqz v0, :cond_0

    array-length v9, v0

    if-lez v9, :cond_0

    if-eqz v2, :cond_0

    array-length v9, v0

    array-length v10, v2

    if-ne v9, v10, :cond_0

    .line 751
    if-eqz p4, :cond_3

    .line 752
    move-object v5, v0

    .line 753
    move-object v6, v2

    .line 772
    .end local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "hasSpecialLabels":Z
    .end local v2    # "labels":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    :goto_2
    new-instance v7, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    return-object v7

    :cond_1
    move v1, v8

    .line 745
    goto :goto_0

    .restart local v0    # "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v1    # "hasSpecialLabels":Z
    :cond_2
    move-object v2, v0

    .line 747
    goto :goto_1

    .line 755
    .restart local v2    # "labels":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    aget-object v3, v0, v8

    .line 756
    aget-object v4, v2, v8

    .line 757
    array-length v9, v0

    if-le v9, v7, :cond_0

    .line 758
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    new-array v5, v9, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 759
    array-length v9, v5

    invoke-static {v0, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    if-eqz v1, :cond_4

    .line 762
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    new-array v6, v9, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 763
    array-length v9, v6

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 766
    :cond_4
    move-object v6, v5

    goto :goto_2
.end method


# virtual methods
.method public addCandidate(Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 877
    .line 878
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 877
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 880
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 879
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 881
    .local v2, "shiftedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    new-array v8, v12, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 882
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 881
    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v0, v8, v11

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 883
    .local v5, "visualCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    new-array v8, v12, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v9, 0x3

    .line 884
    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    .line 883
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 886
    .local v7, "visualShiftedCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v8, 0x5

    .line 887
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 886
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 888
    .local v1, "secondaryPrint":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v8, 0x7

    .line 889
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 888
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 890
    .local v3, "shiftedSecondaryPrint":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v8, 0x4

    .line 891
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 890
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 892
    .local v6, "visualSecondaryPrint":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v8, 0x6

    .line 893
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 892
    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 895
    .local v4, "shiftedVisualSecondaryPrint":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 896
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addShiftedSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 897
    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addVisualSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 898
    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addShiftedVisualSecondaryPrint(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 899
    invoke-direct {p0, v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 900
    invoke-direct {p0, v2, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addShiftedCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 901
    return-void
.end method

.method public addNormalCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "additionalCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "additionalVisualCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->add(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V

    .line 727
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 959
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 960
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 961
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 962
    return-void
.end method

.method public createDecorationIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 7
    .param p1, "candidateTextStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .param p2, "decoreTextStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v6, 0x0

    .line 640
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 642
    .local v5, "drawingWidth":I
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 643
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;I)V

    .line 646
    .local v0, "decoreDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .line 648
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 646
    invoke-interface {p4, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .line 651
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 648
    invoke-interface {p4, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v2

    .line 646
    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->setBounds(IIII)V

    .line 653
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 654
    return-void
.end method

.method public disable(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    .line 486
    return-void
.end method

.method public getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 438
    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 442
    :goto_0
    return-object v0

    .line 439
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getAllVisualCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->allVisualCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getCurrentDrawableState()[I
    .locals 4

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v0

    .line 832
    .local v0, "keyStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$1;->$SwitchMap$com$sonyericsson$textinput$uxp$model$keyboard$KeyBase$KeyStyle:[I

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 866
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    if-nez v2, :cond_5

    .line 867
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_BASIC_PRESSED:[I

    .line 873
    .local v1, "state":[I
    :goto_0
    return-object v1

    .line 834
    .end local v1    # "state":[I
    :pswitch_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    if-nez v2, :cond_0

    .line 835
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_SPACE_PRESSED:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 837
    .end local v1    # "state":[I
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_SPACE:[I

    .line 839
    .restart local v1    # "state":[I
    goto :goto_0

    .line 842
    .end local v1    # "state":[I
    :pswitch_1
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    if-nez v2, :cond_1

    .line 843
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_AUXILIARY_PRESSED:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 845
    .end local v1    # "state":[I
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_AUXILIARY:[I

    .line 847
    .restart local v1    # "state":[I
    goto :goto_0

    .line 850
    .end local v1    # "state":[I
    :pswitch_2
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    if-nez v2, :cond_3

    .line 851
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    if-eqz v2, :cond_2

    .line 852
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_PRESSED_LOCKED:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 854
    .end local v1    # "state":[I
    :cond_2
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_PRESSED:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 857
    .end local v1    # "state":[I
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    if-eqz v2, :cond_4

    .line 858
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION_LOCKED:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 860
    .end local v1    # "state":[I
    :cond_4
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_FUNCTION:[I

    .line 863
    .restart local v1    # "state":[I
    goto :goto_0

    .line 869
    .end local v1    # "state":[I
    :cond_5
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->KEY_STATE_BASIC:[I

    .restart local v1    # "state":[I
    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDecorLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDecorOr12KeySymbolsLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconHasColor()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHasColor:Z

    return v0
.end method

.method public getIconHighlight()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHighlight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconId:I

    return v0
.end method

.method public getIconPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPreviewId()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreviewId:I

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualYPx:I

    add-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    return v0
.end method

.method public getKeyIndexCharacter()I
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public getKeyIndexString()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 585
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->SPACE:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 587
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    goto :goto_0
.end method

.method public getKeyTextSize()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextSize:I

    return v0
.end method

.method public getKeyTextSizeScaleFactor()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextScaleFactor:F

    return v0
.end method

.method public getKeyTextSizeSecondary()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextSizeSecondary:I

    return v0
.end method

.method public getKeyTextYOffsetPx()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextYOffsetPx:I

    return v0
.end method

.method public getLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 391
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getLongPressedCandidates()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLongPressedCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getLongpressTimeout()I
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLongPressTimeout:I

    return v0
.end method

.method public getMetaKey()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mMetaKey:I

    return v0
.end method

.method public getNormalCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    return-object v0
.end method

.method public getNormalLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 399
    if-eqz p1, :cond_1

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 403
    :goto_0
    return-object v0

    .line 400
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->primaryCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p1, "shifted"    # Z

    .prologue
    .line 416
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 418
    .local v0, "result":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .end local v0    # "result":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-object v0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 417
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryLabelOnKey()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getSecondaryLabels(Z)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p1, "shifted"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 410
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryVisualCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 412
    .local v0, "result":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .end local v0    # "result":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-object v0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 411
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;->getSecondaryVisualCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryPrintCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p1, "shifted"    # Z
    .param p2, "index"    # I

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrint(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    .local v0, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1098
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getSecondaryPrintCount(Z)I
    .locals 2
    .param p1, "shifted"    # Z

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabels(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1082
    .local v0, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/CodePointString;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecondaryPrintLabel(Z)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabel(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPrintVisualCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z
    .param p2, "index"    # I

    .prologue
    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintLabel(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getShiftedCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    return-object v0
.end method

.method public getShiftedLabel()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getShowPreview()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShowPreview:I

    return v0
.end method

.method public getTouchRect(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 817
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchYPx:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchXPx:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchWidthPx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchYPx:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchHeightPx:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    return-void
.end method

.method public getVisualSecondaryCandidates(Z)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "shifted"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1171
    if-eqz p1, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 1185
    :goto_0
    return-object v0

    .line 1177
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mVisualCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0

    .line 1185
    :cond_2
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getXKeyCandidate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getXKeyCandidateLength()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    array-length v0, v0

    return v0
.end method

.method public getXKeyType()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyType:I

    return v0
.end method

.method public hasKeyIndex()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondCandidates(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondaryPrint(Z)Z
    .locals 3
    .param p1, "shifted"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 998
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 999
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 999
    goto :goto_0

    .line 1003
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryPrints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hasXKeyCandidates()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommand()Z
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mMetaKey:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecoreLabel()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mDisabled:Z

    return v0
.end method

.method public isFixedPositionLabel()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsFixedPositionLabel:Z

    return v0
.end method

.method public isInsideTouch(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 807
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchXPx:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchWidthPx:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchYPx:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchYPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mTouchHeightPx:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeta()Z
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mMetaKey:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mRepeatable:Z

    return v0
.end method

.method public isReserved()Z
    .locals 1

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsReserved:Z

    return v0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLabelStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeCandidatesBeforeDigit(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    const/4 v2, 0x1

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->mergeCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Z)V

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->mergeCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Z)V

    .line 967
    return-void
.end method

.method public mergeNormalCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V
    .locals 2
    .param p1, "normalCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->mergeCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Z)V

    .line 971
    return-void
.end method

.method public mergeShiftedCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V
    .locals 2
    .param p1, "shiftedCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->mergeCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Z)V

    .line 975
    return-void
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 783
    return-void
.end method

.method public onReleased(Z)V
    .locals 2
    .param p1, "inside"    # Z

    .prologue
    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 794
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSticky:Z

    if-eqz v1, :cond_1

    .line 795
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 797
    :cond_1
    return-void
.end method

.method protected overrideKeyValues(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->overrideKeyValues(Landroid/content/res/TypedArray;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->overrideKeyContent(Landroid/content/res/TypedArray;)V

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->createKeyCandidates()V

    .line 243
    return-void
.end method

.method public removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->removeDuplicateCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    .line 980
    return-void
.end method

.method public setDarkKeyIconLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)V
    .locals 7
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .param p2, "color"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLabelStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mLabelStyle:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLabel(Lcom/sonyericsson/ned/model/CodePointString;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 602
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    check-cast v6, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    .line 603
    .local v6, "textDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    if-eqz v6, :cond_0

    .line 604
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 607
    .end local v6    # "textDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 614
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p3, "scaleType"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .prologue
    const/4 v3, 0x0

    .line 622
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p2, p3, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 625
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p2, p3, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v2

    .line 624
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    :cond_0
    return-void
.end method

.method public setIconHasColor(Z)V
    .locals 0
    .param p1, "iconHasColor"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHasColor:Z

    .line 714
    return-void
.end method

.method public setIconHighlight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "iconHighlight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconHighlight:Landroid/graphics/drawable/Drawable;

    .line 662
    return-void
.end method

.method public setIconPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "iconPreview"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 669
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 673
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 672
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 675
    :cond_0
    return-void
.end method

.method public setIconPreview(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 5
    .param p1, "iconPreview"    # Landroid/graphics/drawable/Drawable;
    .param p2, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v4, 0x0

    .line 678
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 684
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 683
    invoke-interface {p2, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIconPreview:Landroid/graphics/drawable/Drawable;

    .line 686
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 685
    invoke-interface {p2, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v2

    .line 680
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 688
    :cond_0
    return-void
.end method

.method public setKeyIndexString(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "keyIndex"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    .line 530
    return-void
.end method

.method public setKeyStyle(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)V
    .locals 0
    .param p1, "keyStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 592
    return-void
.end method

.method public setKeyTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextSize:I

    .line 458
    return-void
.end method

.method public setKeyTextSizeScaleFactor(F)V
    .locals 0
    .param p1, "keyTextScaleFactor"    # F

    .prologue
    .line 465
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextScaleFactor:F

    .line 466
    return-void
.end method

.method public setKeyTextSizeSecondary(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mKeyTextSizeSecondary:I

    .line 474
    return-void
.end method

.method public setLabel(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 6
    .param p1, "label"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    const/4 v3, 0x0

    .line 572
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLabel(Lcom/sonyericsson/ned/model/CodePointString;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 573
    return-void
.end method

.method public setLockedState(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsLocked:Z

    .line 577
    return-void
.end method

.method public setMetaKey(I)V
    .locals 0
    .param p1, "metaKey"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mMetaKey:I

    .line 546
    return-void
.end method

.method public setNormalCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V
    .locals 0
    .param p1, "normalCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 722
    return-void
.end method

.method public setNormalLabel(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "normalLabel"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 379
    return-void
.end method

.method public setOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mOn:Z

    .line 494
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsPressed:Z

    .line 506
    return-void
.end method

.method public setShiftedCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V
    .locals 0
    .param p1, "shiftedCandidates"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedKeyCandidates:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    .line 735
    return-void
.end method

.method public setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "shiftedLabel"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mShiftedNormalLabel:Lcom/sonyericsson/ned/model/CodePointString;

    .line 387
    return-void
.end method

.method public setXKeyCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)V
    .locals 0
    .param p1, "xKeyCandidates"    # [Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyCandidates:[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .line 431
    return-void
.end method

.method public setXKeyType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 553
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mXKeyType:I

    .line 554
    return-void
.end method

.method public showExtendedSecondaryPrint()Z
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mSecondaryStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->extendedSecondaryPrint:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key$SecondaryStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
