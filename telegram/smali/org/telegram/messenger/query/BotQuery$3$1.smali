.class Lorg/telegram/messenger/query/BotQuery$3$1;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/BotQuery$3;

.field final synthetic val$botInfoFinal:Lorg/telegram/tgnet/TLRPC$BotInfo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/BotQuery$3;Lorg/telegram/tgnet/TLRPC$BotInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/BotQuery$3;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/messenger/query/BotQuery$3$1;->this$0:Lorg/telegram/messenger/query/BotQuery$3;

    iput-object p2, p0, Lorg/telegram/messenger/query/BotQuery$3$1;->val$botInfoFinal:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$3$1;->val$botInfoFinal:Lorg/telegram/tgnet/TLRPC$BotInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$3$1;->this$0:Lorg/telegram/messenger/query/BotQuery$3;

    iget v4, v4, Lorg/telegram/messenger/query/BotQuery$3;->val$classGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 131
    return-void
.end method
