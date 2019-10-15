.class public final Lcom/sonyericsson/textinput/uxp/test/TestKey;
.super Ljava/lang/Object;
.source "TestKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/textinput/uxp/test/TestKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCandidates:[Ljava/lang/String;

.field public final mExpandedArea:Landroid/graphics/Rect;

.field public final mInnerArea:Landroid/graphics/Rect;

.field public final mLabel:Ljava/lang/String;

.field public final mShiftedLabel:Ljava/lang/String;

.field public final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestKey$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/test/TestKey$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mShiftedLabel:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    .line 45
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mInnerArea:Landroid/graphics/Rect;

    .line 46
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mExpandedArea:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mCandidates:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/textinput/uxp/test/TestKey$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/test/TestKey$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mShiftedLabel:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mInnerArea:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mExpandedArea:Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mCandidates:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "shiftedLabel"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "candidates"    # [Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mShiftedLabel:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3, p4, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mInnerArea:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mExpandedArea:Landroid/graphics/Rect;

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mCandidates:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;[Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "shiftedLabel"    # Ljava/lang/String;
    .param p3, "touchArea"    # Landroid/graphics/Rect;
    .param p4, "innerArea"    # Landroid/graphics/Rect;
    .param p5, "expandedArea"    # Landroid/graphics/Rect;
    .param p6, "candidates"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mShiftedLabel:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mInnerArea:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mExpandedArea:Landroid/graphics/Rect;

    .line 38
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mCandidates:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomTouchYCoordinate()F
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    return v0
.end method

.method public getTouchCenterX()F
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchCenterY()F
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mShiftedLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mInnerArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mExpandedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestKey;->mCandidates:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 76
    return-void
.end method
