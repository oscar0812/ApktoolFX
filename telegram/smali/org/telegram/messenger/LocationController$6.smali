.class Lorg/telegram/messenger/LocationController$6;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;

.field final synthetic val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

.field final synthetic val$remove:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 429
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$6;->this$0:Lorg/telegram/messenger/LocationController;

    iput p2, p0, Lorg/telegram/messenger/LocationController$6;->val$remove:I

    iput-object p3, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 433
    :try_start_0
    iget v3, p0, Lorg/telegram/messenger/LocationController$6;->val$remove:I

    if-ne v3, v5, :cond_1

    .line 434
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "DELETE FROM sharing_locations WHERE 1"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget v3, p0, Lorg/telegram/messenger/LocationController$6;->val$remove:I

    if-ne v3, v4, :cond_2

    .line 436
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-eqz v3, :cond_0

    .line 439
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DELETE FROM sharing_locations WHERE uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 441
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-eqz v3, :cond_0

    .line 444
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "REPLACE INTO sharing_locations VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 445
    .local v2, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 447
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 448
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 450
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 451
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 452
    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 453
    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/LocationController$6;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 454
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 456
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 457
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 458
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
