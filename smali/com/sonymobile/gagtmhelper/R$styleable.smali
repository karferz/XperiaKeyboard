.class public final Lcom/sonymobile/gagtmhelper/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/gagtmhelper/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/gagtmhelper/R$styleable;->LoadingImageView:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonymobile/gagtmhelper/R$styleable;->SignInButton:[I

    return-void

    .line 88
    :array_0
    .array-data 4
        0x7f01008c
        0x7f01008d
        0x7f01008e
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
