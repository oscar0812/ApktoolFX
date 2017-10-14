.class Lorg/telegram/ui/ThemePreviewActivity$7;
.super Landroid/view/View;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;

.field final synthetic val$viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iput-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->val$viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->val$viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 312
    .local v1, "selected":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 313
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->paint:Landroid/graphics/Paint;

    if-ne v0, v1, :cond_0

    const v2, -0x666667

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    mul-int/lit8 v2, v0, 0xf

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$7;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    const v2, -0x333334

    goto :goto_1

    .line 316
    :cond_1
    return-void
.end method
