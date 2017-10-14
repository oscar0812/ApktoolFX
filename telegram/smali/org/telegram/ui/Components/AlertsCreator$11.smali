.class final Lorg/telegram/ui/Components/AlertsCreator$11;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createFreeSpaceDialog(Lorg/telegram/ui/LaunchActivity;)Landroid/app/Dialog;
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
    .line 775
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$selected:[I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 779
    .local v3, "num":I
    if-nez v3, :cond_2

    .line 780
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$selected:[I

    aput v8, v4, v7

    .line 788
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 789
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 790
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 791
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/RadioColorCell;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 792
    check-cast v4, Lorg/telegram/ui/Cells/RadioColorCell;

    if-ne v1, p1, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setChecked(ZZ)V

    .line 789
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "count":I
    :cond_2
    if-ne v3, v6, :cond_3

    .line 782
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$selected:[I

    aput v7, v4, v7

    goto :goto_0

    .line 783
    :cond_3
    if-ne v3, v5, :cond_4

    .line 784
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$selected:[I

    aput v6, v4, v7

    goto :goto_0

    .line 785
    :cond_4
    if-ne v3, v8, :cond_0

    .line 786
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$selected:[I

    aput v5, v4, v7

    goto :goto_0

    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "count":I
    :cond_5
    move v5, v7

    .line 792
    goto :goto_2

    .line 795
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method
