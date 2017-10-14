.class Lorg/telegram/messenger/WearDataLayerListenerService$4;
.super Ljava/lang/Object;
.source "WearDataLayerListenerService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/WearDataLayerListenerService;->onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

.field final synthetic val$barrier:Ljava/util/concurrent/CyclicBarrier;

.field final synthetic val$code:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/WearDataLayerListenerService;[Ljava/lang/String;Ljava/util/concurrent/CyclicBarrier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/WearDataLayerListenerService;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$4;->this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/WearDataLayerListenerService$4;->val$code:[Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/WearDataLayerListenerService$4;->val$barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 122
    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    if-ne p1, v5, :cond_0

    .line 123
    aget-object v5, p2, v8

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 124
    .local v2, "did":J
    const-wide/32 v6, 0xbdb28

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 125
    const/4 v5, 0x1

    aget-object v0, p2, v5

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 127
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 128
    .local v4, "msg":Lorg/telegram/messenger/MessageObject;
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    const-string/jumbo v5, "[0-9]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 130
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Lorg/telegram/messenger/WearDataLayerListenerService$4;->val$code:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 133
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/WearDataLayerListenerService$4;->val$barrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "did":J
    .end local v4    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "did":J
    .restart local v4    # "msg":Lorg/telegram/messenger/MessageObject;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
