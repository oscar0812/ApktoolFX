.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 59
    iput p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 60
    iput p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 61
    iput p4, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 62
    iput p5, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 63
    return-void
.end method
