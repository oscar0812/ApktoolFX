.class public abstract Lorg/telegram/messenger/support/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLastTotalSpace:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "x1"    # Lorg/telegram/messenger/support/widget/OrientationHelper$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 251
    new-instance v0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/OrientationHelper$1;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 2
    .param p0, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p1, "orientation"    # I

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :pswitch_0
    invoke-static {p0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 349
    new-instance v0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/OrientationHelper$2;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    .prologue
    .line 71
    const/high16 v0, -0x80000000

    iget v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLastTotalSpace:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLastTotalSpace:I

    .line 58
    return-void
.end method
