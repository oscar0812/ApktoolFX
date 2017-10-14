.class public Lorg/telegram/messenger/StatsController;
.super Ljava/lang/Object;
.source "StatsController.java"


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/StatsController; = null

.field private static final TYPES_COUNT:I = 0x7

.field public static final TYPE_AUDIOS:I = 0x3

.field public static final TYPE_CALLS:I = 0x0

.field public static final TYPE_FILES:I = 0x5

.field public static final TYPE_MESSAGES:I = 0x1

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_PHOTOS:I = 0x4

.field public static final TYPE_ROAMING:I = 0x2

.field public static final TYPE_TOTAL:I = 0x6

.field public static final TYPE_VIDEOS:I = 0x2

.field public static final TYPE_WIFI:I = 0x1

.field private static final lastStatsSaveTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callsTotalTime:[I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private receivedBytes:[[J

.field private receivedItems:[[I

.field private resetStatsDate:[J

.field private sentBytes:[[J

.field private sentItems:[[I

.field private statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/telegram/messenger/StatsController$1;

    invoke-direct {v0}, Lorg/telegram/messenger/StatsController$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x7

    const/4 v8, 0x3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    filled-new-array {v8, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    .line 30
    filled-new-array {v8, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    .line 31
    filled-new-array {v8, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    .line 32
    filled-new-array {v8, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    .line 33
    new-array v4, v8, [J

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    .line 34
    new-array v4, v8, [I

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    .line 36
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "statsSaveQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 61
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "stats"

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 62
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 63
    .local v2, "save":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;

    .line 64
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 65
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callsTotalTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 66
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetStatsDate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 67
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    if-ge v1, v9, :cond_0

    .line 68
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sentBytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 69
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receivedBytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 70
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sentItems"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v1

    .line 71
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receivedItems"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 73
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    .line 74
    const/4 v2, 0x1

    .line 75
    iget-object v4, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 78
    .end local v1    # "b":I
    :cond_2
    if-eqz v2, :cond_3

    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 81
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/StatsController;)[[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/StatsController;)[[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/StatsController;)[[J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/StatsController;)[[J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/StatsController;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/StatsController;)[J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/StatsController;

    .prologue
    .line 14
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/StatsController;
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    .line 49
    .local v0, "localInstance":Lorg/telegram/messenger/StatsController;
    if-nez v0, :cond_1

    .line 50
    const-class v3, Lorg/telegram/messenger/StatsController;

    monitor-enter v3

    .line 51
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lorg/telegram/messenger/StatsController;

    invoke-direct {v1}, Lorg/telegram/messenger/StatsController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/StatsController;
    .local v1, "localInstance":Lorg/telegram/messenger/StatsController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 55
    .end local v1    # "localInstance":Lorg/telegram/messenger/StatsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/StatsController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 57
    :cond_1
    return-object v0

    .line 55
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/StatsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/StatsController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/StatsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/StatsController;
    goto :goto_0
.end method

.method private saveStats()V
    .locals 6

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    .local v0, "newTime":J
    sget-object v2, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 153
    sget-object v2, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/StatsController$2;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/StatsController$2;-><init>(Lorg/telegram/messenger/StatsController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallsTotalTime(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedBytesCount(II)J
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    .line 127
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0
.end method

.method public getRecivedItemsCount(II)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getResetStatsDate(I)J
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSentBytesCount(II)J
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0
.end method

.method public getSentItemsCount(II)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public incrementReceivedBytesCount(IIJ)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I
    .param p3, "value"    # J

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    add-long/2addr v2, p3

    aput-wide v2, v0, p2

    .line 95
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 96
    return-void
.end method

.method public incrementReceivedItemsCount(III)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I
    .param p3, "value"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v0, v0, p1

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    .line 85
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 86
    return-void
.end method

.method public incrementSentBytesCount(IIJ)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I
    .param p3, "value"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    add-long/2addr v2, p3

    aput-wide v2, v0, p2

    .line 100
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 101
    return-void
.end method

.method public incrementSentItemsCount(III)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "dataType"    # I
    .param p3, "value"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v0, v0, p1

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    .line 90
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 91
    return-void
.end method

.method public incrementTotalCallsTime(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "value"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    .line 105
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 106
    return-void
.end method

.method public resetStats(I)V
    .locals 8
    .param p1, "networkType"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, p1

    .line 140
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v1, v1, p1

    aput-wide v6, v1, v0

    .line 142
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v1, v1, p1

    aput-wide v6, v1, v0

    .line 143
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v1, v1, p1

    aput v4, v1, v0

    .line 144
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v1, v1, p1

    aput v4, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aput v4, v1, p1

    .line 147
    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    .line 148
    return-void
.end method
