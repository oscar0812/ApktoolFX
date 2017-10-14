.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/PagerSlidingTabStrip;
    .param p2, "x1"    # Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 241
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$102(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$402(Lorg/telegram/ui/Components/PagerSlidingTabStrip;F)F

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->invalidate()V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 231
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 251
    :cond_2
    return-void
.end method
