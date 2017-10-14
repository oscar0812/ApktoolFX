.class public Lorg/telegram/SQLite/SQLitePreparedStatement;
.super Ljava/lang/Object;
.source "SQLitePreparedStatement.java"


# instance fields
.field private finalizeAfterQuery:Z

.field private isFinalized:Z

.field private sqliteStatementHandle:I


# direct methods
.method public constructor <init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "db"    # Lorg/telegram/SQLite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "finalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    .line 20
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    .line 29
    iput-boolean p3, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    .line 30
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->getSQLiteHandle()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->prepare(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    .line 40
    return-void
.end method


# virtual methods
.method native bindByteBuffer(IILjava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(IILjava/nio/ByteBuffer;I)V

    .line 122
    return-void
.end method

.method public bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/telegram/tgnet/NativeByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 125
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    iget-object v1, p2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(IILjava/nio/ByteBuffer;I)V

    .line 126
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(IID)V

    .line 118
    return-void
.end method

.method native bindDouble(IID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method native bindInt(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindInteger(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(III)V

    .line 114
    return-void
.end method

.method native bindLong(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 133
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IIJ)V

    .line 134
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(II)V

    .line 138
    return-void
.end method

.method native bindNull(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method native bindString(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 129
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(IILjava/lang/String;)V

    .line 130
    return-void
.end method

.method checkFinalized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "Prepared query finalized"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeAfterQuery:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalizeQuery()V

    .line 89
    :cond_0
    return-void
.end method

.method native finalize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public finalizeQuery()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->isFinalized:Z

    .line 106
    iget v1, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->finalize(I)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/telegram/SQLite/SQLiteException;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStatementHandle()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    return v0
.end method

.method native prepare(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    .line 50
    iget v2, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(I)V

    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "i":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, p1, v2

    .line 54
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 55
    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(II)V

    .line 65
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 57
    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInt(III)V

    goto :goto_1

    .line 58
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 59
    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v4, v0, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(IID)V

    goto :goto_1

    .line 60
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 61
    iget v4, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v4, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(IILjava/lang/String;)V

    goto :goto_1

    .line 63
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 68
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v2, Lorg/telegram/SQLite/SQLiteCursor;

    invoke-direct {v2, p0}, Lorg/telegram/SQLite/SQLiteCursor;-><init>(Lorg/telegram/SQLite/SQLitePreparedStatement;)V

    return-object v2
.end method

.method public requery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->checkFinalized()V

    .line 82
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->reset(I)V

    .line 83
    return-void
.end method

.method native reset(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public step()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(I)I

    move-result v0

    return v0
.end method

.method native step(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/SQLite/SQLitePreparedStatement;->sqliteStatementHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(I)I

    .line 77
    return-object p0
.end method
