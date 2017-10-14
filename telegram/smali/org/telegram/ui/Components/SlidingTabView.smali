.class public Lorg/telegram/ui/Components/SlidingTabView;
.super Landroid/widget/LinearLayout;
.source "SlidingTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;
    }
.end annotation


# instance fields
.field private animateTabXTo:F

.field private delegate:Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private paint:Landroid/graphics/Paint;

.field private selectedTab:I

.field private startAnimationTime:J

.field private startAnimationX:F

.field private tabCount:I

.field private tabWidth:F

.field private tabX:F

.field private totalAnimationDiff:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->selectedTab:I

    .line 33
    iput v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabCount:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabWidth:F

    .line 35
    iput v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    .line 36
    iput v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->paint:Landroid/graphics/Paint;

    .line 38
    iput-wide v4, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationTime:J

    .line 39
    iput-wide v4, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    .line 40
    iput v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationX:F

    .line 45
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SlidingTabView;->setOrientation(I)V

    .line 46
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SlidingTabView;->setWeightSum(F)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SlidingTabView;->setWillNotDraw(Z)V

    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SlidingTabView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/SlidingTabView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlidingTabView;->didSelectTab(I)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 99
    int-to-float v0, p1

    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    .line 100
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationX:F

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationTime:J

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SlidingTabView;->invalidate()V

    .line 104
    return-void
.end method

.method private didSelectTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 88
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->selectedTab:I

    if-ne v0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/SlidingTabView;->selectedTab:I

    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlidingTabView;->animateToTab(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->delegate:Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->delegate:Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;->didSelectTab(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTextTab(ILjava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SlidingTabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "tab":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 56
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    const v2, -0xc2c2c3

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v2, Lorg/telegram/ui/Components/SlidingTabView$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SlidingTabView$1;-><init>(Lorg/telegram/ui/Components/SlidingTabView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlidingTabView;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 72
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 73
    const/high16 v2, 0x42480000    # 50.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabCount:I

    .line 77
    return-void
.end method

.method public getSeletedTab()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->selectedTab:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0xc8

    .line 115
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationTime:J

    sub-long v6, v0, v2

    .line 117
    .local v6, "dt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationTime:J

    .line 118
    iget-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    .line 119
    iget-wide v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 120
    iput-wide v4, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    .line 121
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    .line 128
    .end local v6    # "dt":J
    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SlidingTabView;->getHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    iget v3, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabWidth:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SlidingTabView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SlidingTabView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    return-void

    .line 123
    .restart local v6    # "dt":J
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->totalAnimationDiff:J

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    iget v3, p0, Lorg/telegram/ui/Components/SlidingTabView;->startAnimationX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SlidingTabView;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 109
    sub-int v0, p4, p2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabWidth:F

    .line 110
    iget v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView;->selectedTab:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->tabX:F

    iput v0, p0, Lorg/telegram/ui/Components/SlidingTabView;->animateTabXTo:F

    .line 111
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/SlidingTabView;->delegate:Lorg/telegram/ui/Components/SlidingTabView$SlidingTabViewDelegate;

    .line 81
    return-void
.end method
