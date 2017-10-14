.class Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1925
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1928
    sub-int v4, p4, p2

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x3

    .line 1929
    .local v2, "diff":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 1930
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    rem-int/lit8 v5, v0, 0x4

    const/high16 v6, 0x42aa0000    # 85.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 1931
    .local v3, "x":I
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1932
    .local v1, "child":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "x":I
    :cond_0
    return-void
.end method
