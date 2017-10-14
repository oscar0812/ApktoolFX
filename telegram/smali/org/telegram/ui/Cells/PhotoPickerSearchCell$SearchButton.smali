.class Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchButton"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private selector:Landroid/view/View;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/4 v8, 0x1

    const/4 v0, -0x1

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    .line 43
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const v3, -0xe5e5e6

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setBackgroundColor(I)V

    .line 47
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->selector:Landroid/view/View;

    .line 48
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->selector:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->selector:Landroid/view/View;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;

    .line 52
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    const/high16 v3, 0x424c0000    # 51.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    const v4, -0x99999a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 70
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    const/high16 v3, 0x424c0000    # 51.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->selector:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
