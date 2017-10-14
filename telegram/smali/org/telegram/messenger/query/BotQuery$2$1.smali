.class Lorg/telegram/messenger/query/BotQuery$2$1;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/BotQuery$2;

.field final synthetic val$botKeyboardFinal:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/BotQuery$2;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/BotQuery$2;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/telegram/messenger/query/BotQuery$2$1;->this$0:Lorg/telegram/messenger/query/BotQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/BotQuery$2$1;->val$botKeyboardFinal:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$2$1;->val$botKeyboardFinal:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$2$1;->this$0:Lorg/telegram/messenger/query/BotQuery$2;

    iget-wide v4, v4, Lorg/telegram/messenger/query/BotQuery$2;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 88
    return-void
.end method
