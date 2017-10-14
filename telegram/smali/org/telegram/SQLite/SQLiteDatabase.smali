.class public Lorg/telegram/SQLite/SQLiteDatabase;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# instance fields
.field private inTransaction:Z

.field private isOpen:Z

.field private final sqliteHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    .line 18
    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    .line 25
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->opendb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    .line 27
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "database already in transaction"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    .line 85
    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction(I)V

    .line 86
    return-void
.end method

.method native beginTransaction(I)V
.end method

.method checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "Database closed"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v1, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 61
    iget v1, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->closedb(I)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    .line 67
    :cond_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/telegram/SQLite/SQLiteException;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method native closedb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public commitTransaction()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    .line 93
    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction(I)V

    goto :goto_0
.end method

.method native commitTransaction(I)V
.end method

.method public executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public varargs executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 43
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    throw v1
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    .line 78
    return-void
.end method

.method public getSQLiteHandle()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    return v0
.end method

.method native opendb(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation
.end method

.method public varargs queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    .line 54
    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    return-object v0
.end method

.method public tableExists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    .line 31
    const-string/jumbo v0, "SELECT rowid FROM sqlite_master WHERE type=\'table\' AND name=?;"

    .line 32
    .local v0, "s":Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
