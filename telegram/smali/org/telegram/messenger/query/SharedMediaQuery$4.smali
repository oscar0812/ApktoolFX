.class final Lorg/telegram/messenger/query/SharedMediaQuery$4;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$fromCache:Z

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JZIII)V
    .locals 1

    .prologue
    .line 224
    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iput-boolean p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    iput p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 227
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    long-to-int v0, v2

    .line 228
    .local v0, "lower_part":I
    iget-boolean v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    if-ne v2, v8, :cond_0

    if-eqz v0, :cond_0

    .line 229
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$classGuid:I

    invoke-static {v2, v3, v4, v5, v1}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-nez v2, :cond_1

    .line 232
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$200(JII)V

    .line 234
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-boolean v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    if-ne v6, v8, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    iget-boolean v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$fromCache:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$4;->val$count:I

    goto :goto_1
.end method
