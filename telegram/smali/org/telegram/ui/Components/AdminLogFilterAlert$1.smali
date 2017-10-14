.class Lorg/telegram/ui/Components/AdminLogFilterAlert$1;
.super Landroid/widget/FrameLayout;
.source "AdminLogFilterAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AdminLogFilterAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$800()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->dismiss()V

    .line 129
    const/4 v0, 0x1

    .line 131
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
    .line 168
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V

    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x42400000    # 48.0f

    const/4 v5, 0x0

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 142
    .local v1, "height":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_0

    .line 143
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v4

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->getMeasuredWidth()I

    move-result v2

    .line 146
    .local v2, "measuredWidth":I
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x9

    :goto_0
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    invoke-static {}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$200()I

    move-result v6

    add-int v0, v4, v6

    .line 147
    .local v0, "contentSize":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v4, v6

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    .line 151
    :cond_1
    int-to-float v4, v0

    div-int/lit8 v6, v1, 0x5

    int-to-float v6, v6

    const v7, 0x404ccccd    # 3.2f

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    move v3, v5

    .line 152
    .local v3, "padding":I
    :goto_1
    if-eqz v3, :cond_2

    if-ge v0, v1, :cond_2

    .line 153
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    .line 155
    :cond_2
    if-nez v3, :cond_3

    .line 156
    invoke-static {}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$400()I

    move-result v3

    .line 158
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$602(Lorg/telegram/ui/Components/AdminLogFilterAlert;Z)Z

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v5, v3, v5, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$602(Lorg/telegram/ui/Components/AdminLogFilterAlert;Z)Z

    .line 163
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 164
    return-void

    .line 146
    .end local v0    # "contentSize":I
    .end local v3    # "padding":I
    :cond_5
    const/4 v4, 0x7

    goto :goto_0

    .line 151
    .restart local v0    # "contentSize":I
    :cond_6
    div-int/lit8 v4, v1, 0x5

    mul-int/lit8 v3, v4, 0x2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->isDismissed()Z

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
    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method
