.class final Lorg/telegram/messenger/query/MessagesSearchQuery$1;
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
.field final synthetic val$dialog_id:J

.field final synthetic val$direction:I

.field final synthetic val$guid:I

.field final synthetic val$mergeDialogId:J

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(JLorg/telegram/tgnet/TLRPC$TL_messages_search;JIILorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$mergeDialogId:J

    iput-object p3, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput-wide p4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$guid:I

    iput p7, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$direction:I

    iput-object p8, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 143
    new-instance v0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;-><init>(Lorg/telegram/messenger/query/MessagesSearchQuery$1;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
