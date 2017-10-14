.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 3504
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;->this$1:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3507
    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3508
    return-void
.end method
