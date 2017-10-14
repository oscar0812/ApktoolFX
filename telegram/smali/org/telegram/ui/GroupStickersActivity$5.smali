.class Lorg/telegram/ui/GroupStickersActivity$5;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$5;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1
    .param p1, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .param p5, "focusedChildVisible"    # Z

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method
