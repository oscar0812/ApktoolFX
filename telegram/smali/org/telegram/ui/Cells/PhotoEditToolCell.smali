.class public Lorg/telegram/ui/Cells/PhotoEditToolCell;
.super Landroid/widget/FrameLayout;
.source "PhotoEditToolCell.java"


# instance fields
.field private hideValueRunnable:Ljava/lang/Runnable;

.field private nameTextView:Landroid/widget/TextView;

.field private seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

.field private valueAnimation:Landroid/animation/AnimatorSet;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoEditToolCell;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->hideValueRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/16 v0, 0x50

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const v4, -0x933c01

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 72
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    const/16 v0, 0x50

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const/4 v4, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const/high16 v9, 0x41c00000    # 24.0f

    move v6, v2

    move v8, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/PhotoEditToolCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->hideValueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 123
    return-void
.end method

.method public setIconAndTextAndValue(Ljava/lang/String;FII)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 128
    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueAnimation:Landroid/animation/AnimatorSet;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->hideValueRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    float-to-int v1, p2

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    .line 142
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSeekBarDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V
    .locals 2
    .param p1, "photoEditorSeekBarDelegate"    # Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoEditToolCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PhotoEditToolCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoEditToolCell;Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V

    .line 112
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell;->seekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setTag(Ljava/lang/Object;)V

    .line 118
    return-void
.end method
