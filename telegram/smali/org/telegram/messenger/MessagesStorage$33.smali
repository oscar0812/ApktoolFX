.class Lorg/telegram/messenger/MessagesStorage$33;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->createTaskForMid(IIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$inner:Z

.field final synthetic val$messageId:I

.field final synthetic val$readTime:I

.field final synthetic val$time:I

.field final synthetic val$ttl:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIIIIZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1975
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$time:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$readTime:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$ttl:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$messageId:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$inner:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1979
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$time:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$readTime:I

    if-le v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$time:I

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$ttl:I

    add-int v11, v13, v14

    .line 1980
    .local v11, "minDate":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1981
    .local v7, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v10, "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$messageId:I

    int-to-long v8, v13

    .line 1984
    .local v8, "mid":J
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    if-eqz v13, :cond_0

    .line 1985
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    int-to-long v14, v13

    const/16 v13, 0x20

    shl-long/2addr v14, v13

    or-long/2addr v8, v14

    .line 1987
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    invoke-virtual {v7, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1990
    new-instance v13, Lorg/telegram/messenger/MessagesStorage$33$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lorg/telegram/messenger/MessagesStorage$33$1;-><init>(Lorg/telegram/messenger/MessagesStorage$33;Ljava/util/ArrayList;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    const-string/jumbo v14, "REPLACE INTO enc_tasks_v2 VALUES(?, ?)"

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    .line 2001
    .local v12, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 2002
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2003
    .local v6, "key":I
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2004
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 2005
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2006
    const/4 v14, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2007
    const/4 v13, 0x2

    invoke-virtual {v12, v13, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2008
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2004
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1979
    .end local v2    # "a":I
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "b":I
    .end local v6    # "key":I
    .end local v7    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v8    # "mid":J
    .end local v10    # "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "minDate":I
    .end local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->val$readTime:I

    goto :goto_0

    .line 2001
    .restart local v2    # "a":I
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4    # "b":I
    .restart local v6    # "key":I
    .restart local v7    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .restart local v8    # "mid":J
    .restart local v10    # "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "minDate":I
    .restart local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2011
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "b":I
    .end local v6    # "key":I
    :cond_3
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2012
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "UPDATE messages SET ttl = 0 WHERE mid = %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2013
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v11, v7}, Lorg/telegram/messenger/MessagesController;->didAddedNewTask(ILandroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .end local v2    # "a":I
    .end local v7    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v8    # "mid":J
    .end local v10    # "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "minDate":I
    .end local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_3
    return-void

    .line 2014
    :catch_0
    move-exception v5

    .line 2015
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
