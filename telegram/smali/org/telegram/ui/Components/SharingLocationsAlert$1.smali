.class Lorg/telegram/ui/Components/SharingLocationsAlert$1;
.super Landroid/widget/FrameLayout;
.source "SharingLocationsAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$500(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$000(Lorg/telegram/ui/Components/SharingLocationsAlert;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$400()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$500(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$000(Lorg/telegram/ui/Components/SharingLocationsAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$000(Lorg/telegram/ui/Components/SharingLocationsAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->dismiss()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 111
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$300(Lorg/telegram/ui/Components/SharingLocationsAlert;)V

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x42600000    # 56.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 85
    .local v1, "height":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 86
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v4

    .line 88
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->getMeasuredWidth()I

    move-result v2

    .line 89
    .local v2, "measuredWidth":I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    add-int v0, v4, v5

    .line 92
    .local v0, "contentSize":I
    div-int/lit8 v4, v1, 0x5

    mul-int/lit8 v4, v4, 0x3

    if-ge v0, v4, :cond_3

    .line 93
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 101
    .local v3, "padding":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$100(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 102
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$202(Lorg/telegram/ui/Components/SharingLocationsAlert;Z)Z

    .line 103
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$100(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v7, v3, v7, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 104
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$202(Lorg/telegram/ui/Components/SharingLocationsAlert;Z)Z

    .line 106
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 107
    return-void

    .line 95
    .end local v3    # "padding":I
    :cond_3
    div-int/lit8 v4, v1, 0x5

    mul-int/lit8 v3, v4, 0x2

    .line 96
    .restart local v3    # "padding":I
    if-ge v0, v1, :cond_1

    .line 97
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$1;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$200(Lorg/telegram/ui/Components/SharingLocationsAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method
