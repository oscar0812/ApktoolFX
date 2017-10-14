.class Lorg/telegram/ui/Components/AudioPlayerAlert$1;
.super Landroid/widget/FrameLayout;
.source "AudioPlayerAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1700()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 222
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v0

    .line 224
    .local v0, "y":I
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1500(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setFullAnimationProgress(F)V

    .line 228
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 186
    .local v2, "height":I
    const/high16 v6, 0x43320000    # 178.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$300()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v1, v6, v7

    .line 188
    .local v1, "contentSize":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 189
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    const/high16 v6, 0x43320000    # 178.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    add-int/2addr v7, v6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int v4, v7, v6

    .line 199
    .local v4, "padding":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 200
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->ignoreLayout:Z

    .line 201
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v6, v7, v4, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 202
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->ignoreLayout:Z

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 205
    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredHeight()I

    move-result v6

    if-lt v6, v2, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$602(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z

    .line 206
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int v7, v2, v6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_8

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    sub-int v6, v7, v6

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v0, v6, v7

    .line 207
    .local v0, "availableHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredWidth()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 208
    .local v3, "maxSize":I
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x41880000    # 17.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$702(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    .line 209
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/high16 v7, 0x41980000    # 19.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$802(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    .line 210
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$902(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F

    .line 211
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    int-to-float v7, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1102(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F

    .line 213
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1202(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F

    .line 214
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v8

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 215
    .local v5, "scaledHeight":I
    if-le v5, v0, :cond_1

    .line 216
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v7

    sub-int v8, v5, v0

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1202(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F

    .line 218
    :cond_1
    return-void

    .line 190
    .end local v0    # "availableHeight":I
    .end local v3    # "maxSize":I
    .end local v4    # "padding":I
    .end local v5    # "scaledHeight":I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 192
    :cond_3
    if-ge v1, v2, :cond_4

    .line 193
    sub-int v4, v2, v1

    .line 197
    .restart local v4    # "padding":I
    :goto_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    add-int/2addr v6, v7

    add-int/2addr v4, v6

    goto/16 :goto_1

    .line 195
    .end local v4    # "padding":I
    :cond_4
    if-ge v1, v2, :cond_5

    const/4 v4, 0x0

    .restart local v4    # "padding":I
    :goto_6
    goto :goto_4

    .end local v4    # "padding":I
    :cond_5
    div-int/lit8 v6, v2, 0x5

    mul-int/lit8 v6, v6, 0x3

    sub-int v4, v2, v6

    goto :goto_6

    .line 197
    .restart local v4    # "padding":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 205
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 206
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isDismissed()Z

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
    .line 232
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$1;->ignoreLayout:Z

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method
