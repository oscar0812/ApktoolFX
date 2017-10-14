.class final Lorg/telegram/messenger/query/MessagesSearchQuery$2;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentReqId:I

.field final synthetic val$dialog_id:J

.field final synthetic val$guid:I

.field final synthetic val$mergeDialogId:J

.field final synthetic val$queryWithDialogFinal:J

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(ILorg/telegram/tgnet/TLRPC$TL_messages_search;JJIJLorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .prologue
    .line 182
    iput p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$currentReqId:I

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput-wide p3, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iput-wide p5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    iput p7, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    iput-wide p8, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    iput-object p10, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 185
    new-instance v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;-><init>(Lorg/telegram/messenger/query/MessagesSearchQuery$2;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method
