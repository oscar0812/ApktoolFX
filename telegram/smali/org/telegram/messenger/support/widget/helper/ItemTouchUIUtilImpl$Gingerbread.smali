.class Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Gingerbread;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FF)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 123
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 124
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FF)V

    .line 126
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 132
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 133
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FF)V

    .line 135
    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void
.end method
