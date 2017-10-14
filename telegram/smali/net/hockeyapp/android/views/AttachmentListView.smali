.class public Lnet/hockeyapp/android/views/AttachmentListView;
.super Landroid/view/ViewGroup;
.source "AttachmentListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachmentListView"


# instance fields
.field private mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 102
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .line 43
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getAttachmentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    :cond_0
    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    .line 108
    .local v3, "count":I
    sub-int v6, p4, p2

    .line 109
    .local v6, "width":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v7

    .line 110
    .local v7, "xPos":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingTop()I

    move-result v8

    .line 112
    .local v8, "yPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 113
    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 118
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 120
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 121
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    add-int v9, v7, v2

    if-le v9, v6, :cond_0

    .line 122
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v7

    .line 123
    iget v9, p0, Lnet/hockeyapp/android/views/AttachmentListView;->mLineHeight:I

    add-int/2addr v8, v9

    .line 125
    :cond_0
    add-int v9, v7, v2

    add-int v10, v8, v1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v9, v2

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getGap()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 112
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_0

    .line 51
    const-string/jumbo v11, "AttachmentListView"

    const-string/jumbo v12, "Width is unspecified"

    invoke-static {v11, v12}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 56
    .local v8, "width":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    .line 57
    .local v3, "count":I
    const/4 v4, 0x0

    .line 58
    .local v4, "height":I
    const/4 v6, 0x0

    .line 60
    .local v6, "line_height":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v9

    .line 61
    .local v9, "xPos":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingTop()I

    move-result v10

    .line 63
    .local v10, "yPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 64
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    move-object v0, v1

    .line 65
    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .line 66
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getEffectiveMaxHeight()I

    move-result v11

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 70
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 73
    .local v2, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 75
    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    .line 76
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v9

    .line 77
    add-int/2addr v10, v6

    .line 79
    :cond_1
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 63
    .end local v2    # "childWidth":I
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iput v6, p0, Lnet/hockeyapp/android/views/AttachmentListView;->mLineHeight:I

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_5

    .line 85
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 92
    :cond_4
    :goto_1
    invoke-virtual {p0, v8, v4}, Lnet/hockeyapp/android/views/AttachmentListView;->setMeasuredDimension(II)V

    .line 93
    return-void

    .line 87
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_4

    .line 88
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v11, v4, :cond_4

    .line 89
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    goto :goto_1
.end method
