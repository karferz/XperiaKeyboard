.class final Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableState"
.end annotation


# instance fields
.field private mCellBackground:Landroid/graphics/drawable/Drawable;

.field private mCellBorderThicknessPx:I

.field private mColumnMinWidth:I

.field private mDynamicContentIdentifier:Ljava/lang/String;

.field private mEmptyDynamicContentHint:Ljava/lang/String;

.field private mLabelTextSize:I

.field private mMinVisibleRows:F

.field private mRowMinHeight:I

.field private mRowPreferredHeight:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mColumnMinWidth:I

    .line 629
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowPreferredHeight:I

    .line 631
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowMinHeight:I

    .line 632
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBackground:Landroid/graphics/drawable/Drawable;

    .line 633
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBorderThicknessPx:I

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mLabelTextSize:I

    .line 635
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mDynamicContentIdentifier:Ljava/lang/String;

    .line 636
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mMinVisibleRows:F

    .line 637
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mEmptyDynamicContentHint:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$1;

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowPreferredHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowPreferredHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mMinVisibleRows:F

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # F

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mMinVisibleRows:F

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowMinHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowMinHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mColumnMinWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mColumnMinWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mDynamicContentIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mDynamicContentIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mEmptyDynamicContentHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mEmptyDynamicContentHint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBorderThicknessPx:I

    return v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBorderThicknessPx:I

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    .prologue
    .line 626
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mLabelTextSize:I

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .param p1, "x1"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mLabelTextSize:I

    return p1
.end method


# virtual methods
.method public copy()Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;-><init>()V

    .line 647
    .local v0, "result":Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mColumnMinWidth:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mColumnMinWidth:I

    .line 648
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowPreferredHeight:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowPreferredHeight:I

    .line 649
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowMinHeight:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mRowMinHeight:I

    .line 650
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mMinVisibleRows:F

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mMinVisibleRows:F

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBackground:Landroid/graphics/drawable/Drawable;

    .line 652
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBorderThicknessPx:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mCellBorderThicknessPx:I

    .line 653
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mLabelTextSize:I

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mLabelTextSize:I

    .line 654
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mDynamicContentIdentifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mDynamicContentIdentifier:Ljava/lang/String;

    .line 655
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mEmptyDynamicContentHint:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$ImmutableState;->mEmptyDynamicContentHint:Ljava/lang/String;

    .line 656
    return-object v0
.end method
