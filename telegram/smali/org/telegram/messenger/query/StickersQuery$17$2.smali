.class Lorg/telegram/messenger/query/StickersQuery$17$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$17;

.field final synthetic val$stickerSetsByIdNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsNew:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$17;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$17;

    .prologue
    .line 848
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 852
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1702(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 854
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1302(I)I

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$17$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$17;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$17;->val$date:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1802(I)I

    .line 856
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 857
    return-void
.end method
