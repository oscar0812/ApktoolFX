.class final Lorg/telegram/messenger/query/StickersQuery$7;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadGroupStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 340
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 341
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 342
    .local v0, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$7$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$7$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$7;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 369
    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$7$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$7$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$7;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 377
    .end local v0    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_0
    return-void
.end method
