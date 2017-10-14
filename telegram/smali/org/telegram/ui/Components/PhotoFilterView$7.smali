.class Lorg/telegram/ui/Components/PhotoFilterView$7;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1867
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1870
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1871
    .local v1, "num":I
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v2

    iput v1, v2, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    .line 1872
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 1873
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)[Lorg/telegram/ui/Components/RadioButton;

    move-result-object v2

    aget-object v4, v2, v0

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 1872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1873
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1875
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    .line 1876
    return-void
.end method
