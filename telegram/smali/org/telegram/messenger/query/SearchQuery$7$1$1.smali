.class Lorg/telegram/messenger/query/SearchQuery$7$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/query/SearchQuery$7$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$7$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/query/SearchQuery$7$1;

    .prologue
    .line 547
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$7$1$1;->this$1:Lorg/telegram/messenger/query/SearchQuery$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 547
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/query/SearchQuery$7$1$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_topPeer;Lorg/telegram/tgnet/TLRPC$TL_topPeer;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_topPeer;Lorg/telegram/tgnet/TLRPC$TL_topPeer;)I
    .locals 4
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .prologue
    .line 550
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 551
    const/4 v0, -0x1

    .line 555
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
