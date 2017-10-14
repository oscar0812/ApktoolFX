.class Lorg/telegram/messenger/MessagesController$25;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$did:I

.field final synthetic val$max_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIJI)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1711
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$25;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$25;->val$did:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$25;->val$count:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$25;->val$max_id:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$25;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1714
    if-nez p2, :cond_3

    move-object v10, p1

    .line 1715
    check-cast v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1716
    .local v10, "messages":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;-><init>()V

    .line 1717
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_photos_photos;
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->count:I

    .line 1718
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->users:Ljava/util/ArrayList;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1719
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 1720
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1721
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_1

    .line 1719
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1724
    :cond_1
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->photos:Ljava/util/ArrayList;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1726
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$25;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$25;->val$did:I

    iget v3, p0, Lorg/telegram/messenger/MessagesController$25;->val$count:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$25;->val$max_id:J

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/messenger/MessagesController$25;->val$classGuid:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIJZI)V

    .line 1728
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_photos_photos;
    .end local v8    # "a":I
    .end local v10    # "messages":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_3
    return-void
.end method
