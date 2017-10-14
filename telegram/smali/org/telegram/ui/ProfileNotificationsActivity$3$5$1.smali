.class Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;
.super Landroid/widget/TextView;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileNotificationsActivity$3$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3$5;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileNotificationsActivity$3$5;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;->this$2:Lorg/telegram/ui/ProfileNotificationsActivity$3$5;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 395
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 396
    return-void
.end method
