.class final Lorg/telegram/messenger/query/StickersQuery$25;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$stickersFinal:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$type:I

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1163
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 1164
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v8, "REPLACE INTO stickers_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 1165
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1166
    const/4 v3, 0x4

    .line 1167
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1168
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->getObjectSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1170
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1171
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1172
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1173
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1175
    :cond_1
    const/4 v8, 0x1

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$type:I

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v4, v8, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1176
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1177
    const/4 v5, 0x3

    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$date:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1178
    const/4 v5, 0x4

    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$hash:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1179
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1180
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1181
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1192
    .end local v0    # "a":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "size":I
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_3
    return-void

    .restart local v0    # "a":I
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v3    # "size":I
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    move v5, v7

    .line 1175
    goto :goto_2

    .line 1183
    .end local v0    # "a":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "size":I
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "UPDATE stickers_v2 SET date = ?"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 1184
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1185
    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$25;->val$date:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1186
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1187
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1189
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v2

    .line 1190
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
