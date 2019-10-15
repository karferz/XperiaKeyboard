.class public final Lcom/sonyericsson/textinput/uxp/test/TestEmoji;
.super Ljava/lang/Object;
.source "TestEmoji.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/textinput/uxp/test/TestEmoji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContent:Ljava/lang/String;

.field private mIsSmiley:Z

.field private final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/test/TestEmoji$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mContent:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mTouchArea:Landroid/graphics/Rect;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/textinput/uxp/test/TestEmoji$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/test/TestEmoji$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "touchArea"    # Landroid/graphics/Rect;
    .param p3, "isSmiley"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mContent:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mTouchArea:Landroid/graphics/Rect;

    .line 53
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mIsSmiley:Z

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchCenterX()F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchCenterY()F
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public isSmiley()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mIsSmiley:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    return-void
.end method
