.class Lorg/telegram/messenger/FileLoadOperation$2;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 420
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 423
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$500(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$500(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 427
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 428
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation;->access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 429
    .local v1, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 427
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    .end local v0    # "a":I
    .end local v1    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$2;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V

    goto :goto_0
.end method
