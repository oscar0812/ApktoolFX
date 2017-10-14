.class Lorg/telegram/messenger/MessagesStorage$60;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$file:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3845
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$file:Lorg/telegram/tgnet/TLObject;

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3848
    const/4 v4, 0x0

    .line 3850
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$path:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3851
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 3852
    const/4 v3, 0x0

    .line 3853
    .local v3, "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$file:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_2

    .line 3854
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 3855
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$file:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 3856
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3862
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 3878
    if-eqz v4, :cond_1

    .line 3879
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3882
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_1
    :goto_1
    return-void

    .line 3857
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$file:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    .line 3858
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 3859
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$file:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3860
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3875
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :catch_0
    move-exception v1

    .line 3876
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3878
    if-eqz v4, :cond_1

    .line 3879
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_1

    .line 3865
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "REPLACE INTO sent_files_v2 VALUES(?, ?, ?)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 3866
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3867
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3868
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3869
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3870
    const/4 v5, 0x2

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$type:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3871
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3872
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3873
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3878
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_4
    if-eqz v4, :cond_1

    .line 3879
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_1

    .line 3878
    .end local v2    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    .line 3879
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    throw v5
.end method
