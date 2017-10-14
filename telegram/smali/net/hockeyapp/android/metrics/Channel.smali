.class Lnet/hockeyapp/android/metrics/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"

.field protected static mMaxBatchCount:I

.field protected static mMaxBatchInterval:I


# instance fields
.field private final mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

.field protected final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

.field protected final mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x32

    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    .line 42
    const/16 v0, 0x3a98

    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    return-void
.end method

.method public constructor <init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V
    .locals 3
    .param p1, "telemetryContext"    # Lnet/hockeyapp/android/metrics/TelemetryContext;
    .param p2, "persistence"    # Lnet/hockeyapp/android/metrics/Persistence;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    .line 70
    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    .line 71
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "HockeyApp User Metrics Sender Queue"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    .line 72
    return-void
.end method


# virtual methods
.method protected createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;)",
            "Lnet/hockeyapp/android/metrics/model/Envelope;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "data":Lnet/hockeyapp/android/metrics/model/Data;, "Lnet/hockeyapp/android/metrics/model/Data<Lnet/hockeyapp/android/metrics/model/Domain;>;"
    new-instance v1, Lnet/hockeyapp/android/metrics/model/Envelope;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/model/Envelope;-><init>()V

    .line 125
    .local v1, "envelope":Lnet/hockeyapp/android/metrics/model/Envelope;
    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setData(Lnet/hockeyapp/android/metrics/model/Base;)V

    .line 126
    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/Data;->getBaseData()Lnet/hockeyapp/android/metrics/model/Domain;

    move-result-object v0

    .line 127
    .local v0, "baseData":Lnet/hockeyapp/android/metrics/model/Domain;
    instance-of v4, v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    if-eqz v4, :cond_0

    .line 128
    check-cast v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    .end local v0    # "baseData":Lnet/hockeyapp/android/metrics/model/Domain;
    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "envelopeName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/Envelope;->setName(Ljava/lang/String;)V

    .line 132
    .end local v2    # "envelopeName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    .line 134
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lnet/hockeyapp/android/utils/Util;->dateToISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTime(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getInstrumentationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/metrics/model/Envelope;->setIKey(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getContextTags()Ljava/util/Map;

    move-result-object v3

    .line 138
    .local v3, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v1, v3}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTags(Ljava/util/Map;)V

    .line 141
    :cond_1
    return-object v1
.end method

.method protected enqueue(Ljava/lang/String;)V
    .locals 3
    .param p1, "serializedItem"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v1, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    if-lt v0, v2, :cond_2

    .line 87
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    .line 94
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->scheduleSynchronizeTask()V

    goto :goto_1

    .line 92
    :cond_3
    const-string/jumbo v0, "HockeyApp-Metrics"

    const-string/jumbo v2, "Unable to add item to queue"

    invoke-static {v0, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .locals 6
    .param p1, "data"    # Lnet/hockeyapp/android/metrics/model/Base;

    .prologue
    .line 156
    instance-of v3, p1, Lnet/hockeyapp/android/metrics/model/Data;

    if-eqz v3, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, "envelope":Lnet/hockeyapp/android/metrics/model/Envelope;
    :try_start_0
    check-cast p1, Lnet/hockeyapp/android/metrics/model/Data;

    .end local p1    # "data":Lnet/hockeyapp/android/metrics/model/Base;
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Channel;->createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/Channel;->serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "serializedEnvelope":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/metrics/Channel;->enqueue(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enqueued telemetry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lnet/hockeyapp/android/metrics/model/Envelope;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v1    # "envelope":Lnet/hockeyapp/android/metrics/model/Envelope;
    .end local v2    # "serializedEnvelope":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 160
    .restart local v1    # "envelope":Lnet/hockeyapp/android/metrics/model/Envelope;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Telemetry not enqueued, could not create envelope, must be of type ITelemetry"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "envelope":Lnet/hockeyapp/android/metrics/model/Envelope;
    .restart local p1    # "data":Lnet/hockeyapp/android/metrics/model/Base;
    :cond_1
    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Telemetry not enqueued, must be of type ITelemetry"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected scheduleSynchronizeTask()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;-><init>(Lnet/hockeyapp/android/metrics/Channel;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    .line 146
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    sget v2, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 147
    return-void
.end method

.method protected serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;
    .locals 6
    .param p1, "envelope"    # Lnet/hockeyapp/android/metrics/model/Envelope;

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 184
    .local v1, "stringWriter":Ljava/io/StringWriter;
    invoke-virtual {p1, v1}, Lnet/hockeyapp/android/metrics/model/Envelope;->serialize(Ljava/io/Writer;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    :goto_0
    return-object v2

    .line 187
    :cond_0
    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Envelope wasn\'t empty but failed to serialize anything, returning null"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to save data with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synchronize()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-virtual {v1}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->cancel()Z

    .line 106
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 108
    .local v0, "data":[Ljava/lang/String;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/Persistence;->persist([Ljava/lang/String;)V

    .line 115
    .end local v0    # "data":[Ljava/lang/String;
    :cond_1
    return-void
.end method
