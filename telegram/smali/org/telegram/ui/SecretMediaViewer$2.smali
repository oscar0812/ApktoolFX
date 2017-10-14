.class Lorg/telegram/ui/SecretMediaViewer$2;
.super Landroid/widget/FrameLayout;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "x":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 618
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->layout(IIII)V

    .line 619
    if-eqz p1, :cond_2

    .line 620
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1400(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->access$1502(Lorg/telegram/ui/SecretMediaViewer;F)F

    .line 622
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/SecretMediaViewer;->access$1602(Lorg/telegram/ui/SecretMediaViewer;F)F

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/SecretMediaViewer;->access$1702(Lorg/telegram/ui/SecretMediaViewer;F)F

    .line 625
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->access$1500(Lorg/telegram/ui/SecretMediaViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->access$1800(Lorg/telegram/ui/SecretMediaViewer;F)V

    .line 627
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/16 v4, 0x15

    .line 587
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 588
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 589
    .local v0, "heightSize":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 590
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 591
    .local v1, "insets":Landroid/view/WindowInsets;
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v3, :cond_1

    .line 592
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_0

    .line 593
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 595
    :cond_0
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v3

    .line 597
    :cond_1
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 598
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 604
    .end local v1    # "insets":Landroid/view/WindowInsets;
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/SecretMediaViewer$2;->setMeasuredDimension(II)V

    .line 605
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 606
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 608
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$2;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->measure(II)V

    .line 609
    return-void

    .line 600
    :cond_4
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_2

    .line 601
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method
