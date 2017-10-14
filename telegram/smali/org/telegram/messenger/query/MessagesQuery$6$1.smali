.class Lorg/telegram/messenger/query/MessagesQuery$6$1;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesQuery$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesQuery$6;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/MessagesQuery$6;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$6$1;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$6$1;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesQuery$6;->val$dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 284
    return-void
.end method
