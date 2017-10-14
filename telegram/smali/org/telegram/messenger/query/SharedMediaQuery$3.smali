.class final Lorg/telegram/messenger/query/SharedMediaQuery$3;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$fromCache:Z

.field final synthetic val$objects:Ljava/util/ArrayList;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field final synthetic val$topReached:Z

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$messages_Messages;ZJLjava/util/ArrayList;IIZ)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$fromCache:Z

    iput-wide p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$uid:J

    iput-object p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$objects:Ljava/util/ArrayList;

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$classGuid:I

    iput p7, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$type:I

    iput-boolean p8, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$topReached:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 214
    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 215
    .local v0, "totalCount":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$fromCache:Z

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 216
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$fromCache:Z

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 217
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$objects:Ljava/util/ArrayList;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$classGuid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$3;->val$topReached:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 218
    return-void
.end method
