.class Lorg/telegram/messenger/MessagesController$42;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$did:J

.field final synthetic val$max_id_delete_final:I

.field final synthetic val$onlyHistory:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JII)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2261
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$42;->val$did:J

    iput p4, p0, Lorg/telegram/messenger/MessagesController$42;->val$onlyHistory:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$42;->val$max_id_delete_final:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v7, -0x1

    .line 2264
    if-nez p2, :cond_1

    move-object v0, p1

    .line 2265
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    .line 2266
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    if-lez v1, :cond_0

    .line 2267
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$42;->val$did:J

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/messenger/MessagesController$42;->val$onlyHistory:I

    iget v6, p0, Lorg/telegram/messenger/MessagesController$42;->val$max_id_delete_final:I

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->access$3700(Lorg/telegram/messenger/MessagesController;JZII)V

    .line 2269
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts_count:I

    invoke-virtual {v1, v7, v2, v7, v3}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 2271
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;
    :cond_1
    return-void
.end method
