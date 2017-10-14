.class public Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerPhotoCell.java"


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field public checkBox:Lorg/telegram/ui/Components/CheckBox;

.field public checkFrame:Landroid/widget/FrameLayout;

.field public itemWidth:I

.field public photoImage:Lorg/telegram/ui/Components/BackupImageView;

.field public videoInfoContainer:Landroid/widget/FrameLayout;

.field public videoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v0, -0x2

    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    .line 47
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f020174

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x10

    const/16 v3, 0x53

    invoke-static {v10, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v9, "imageView1":Landroid/widget/ImageView;
    const v1, 0x7f0200e0

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x13

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoTextView:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x41900000    # 18.0f

    const v4, -0x40cccccd    # -0.7f

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02004e

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xc33511

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v2, 0x1e

    const/high16 v3, 0x41f00000    # 30.0f

    const/16 v4, 0x35

    move v6, v11

    move v7, v11

    move v8, v5

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 73
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->itemWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->itemWidth:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 10
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const v0, -0xf5f5f6

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    .line 99
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 100
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 102
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 104
    :cond_0
    if-eqz p2, :cond_4

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setBackgroundColor(I)V

    .line 108
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 109
    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v5, v0, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v9, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    aput v0, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    :goto_1
    aput v1, v7, v3

    .line 110
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v9

    .line 109
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 136
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 109
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 132
    :cond_4
    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setBackgroundColor(I)V

    .line 133
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    goto :goto_2

    :cond_5
    move v0, v3

    .line 132
    goto :goto_3

    :cond_6
    move v0, v2

    .line 133
    goto :goto_4

    :cond_7
    move v1, v2

    .line 134
    goto :goto_5
.end method

.method public showCheck(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 81
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 84
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v4, v0, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    aput v0, v7, v8

    .line 85
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_2

    :goto_1
    aput v1, v6, v8

    .line 86
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v9

    .line 84
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 96
    return-void

    :cond_1
    move v0, v2

    .line 84
    goto :goto_0

    :cond_2
    move v1, v2

    .line 85
    goto :goto_1
.end method
