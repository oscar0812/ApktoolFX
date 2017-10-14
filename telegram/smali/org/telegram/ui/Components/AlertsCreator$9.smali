.class final Lorg/telegram/ui/Components/AlertsCreator$9;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([ILandroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 703
    .local v3, "num":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    aput v3, v4, v7

    .line 704
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 705
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 706
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 707
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/RadioColorCell;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 708
    check-cast v4, Lorg/telegram/ui/Cells/RadioColorCell;

    if-ne v1, p1, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setChecked(ZZ)V

    .line 705
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 708
    goto :goto_1

    .line 711
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method
