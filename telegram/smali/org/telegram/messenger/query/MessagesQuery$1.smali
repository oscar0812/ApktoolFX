.class final Lorg/telegram/messenger/query/MessagesQuery$1;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/query/MessagesQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/query/MessagesQuery$1;->compare(Lorg/telegram/tgnet/TLRPC$MessageEntity;Lorg/telegram/tgnet/TLRPC$MessageEntity;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$MessageEntity;Lorg/telegram/tgnet/TLRPC$MessageEntity;)I
    .locals 2
    .param p1, "entity1"    # Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .param p2, "entity2"    # Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .prologue
    .line 43
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-le v0, v1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 45
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ge v0, v1, :cond_1

    .line 46
    const/4 v0, -0x1

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
