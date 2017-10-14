.class final Lorg/telegram/ui/Components/AlertsCreator$4;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;[I)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$selectedColor:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 502
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 503
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 504
    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/RadioColorCell;

    .line 505
    .local v1, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    if-ne v1, p1, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setChecked(ZZ)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 505
    goto :goto_1

    .line 507
    .end local v1    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$selectedColor:[I

    sget-object v6, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v3, v6, v3

    aput v3, v4, v5

    .line 508
    return-void
.end method
