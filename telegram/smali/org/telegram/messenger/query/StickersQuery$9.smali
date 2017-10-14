.class final Lorg/telegram/messenger/query/StickersQuery$9;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 531
    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iput-boolean p2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 536
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    .line 537
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    .line 539
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->access$800(ILjava/util/ArrayList;ZI)V

    .line 540
    return-void
.end method
