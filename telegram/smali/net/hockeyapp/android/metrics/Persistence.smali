.class Lnet/hockeyapp/android/metrics/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# static fields
.field private static final BIT_TELEMETRY_DIRECTORY:Ljava/lang/String; = "/net.hockeyapp.android/telemetry/"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_FILE_COUNT:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsPersistence"


# instance fields
.field protected mServedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelemetryDirectory:Ljava/io/File;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeakSender:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/metrics/Sender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    .line 38
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telemetryDirectory"    # Ljava/io/File;
    .param p3, "sender"    # Lnet/hockeyapp/android/metrics/Sender;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    .line 67
    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->createDirectoriesIfNecessary()V

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sender"    # Lnet/hockeyapp/android/metrics/Sender;

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V

    .line 80
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    .line 81
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 311
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createDirectoriesIfNecessary()V
    .locals 3

    .prologue
    .line 289
    const-string/jumbo v1, "Successfully created directory"

    .line 290
    .local v1, "successMessage":Ljava/lang/String;
    const-string/jumbo v0, "Error creating directory"

    .line 291
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    const-string/jumbo v2, "HA-MetricsPersistence"

    invoke-static {v2, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    const-string/jumbo v2, "HA-MetricsPersistence"

    invoke-static {v2, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 235
    if-eqz p1, :cond_1

    .line 236
    sget-object v2, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 238
    .local v0, "deletedFile":Z
    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error deleting telemetry file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    monitor-exit v2

    .line 248
    .end local v0    # "deletedFile":Z
    :goto_1
    return-void

    .line 241
    .restart local v0    # "deletedFile":Z
    :cond_0
    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Successfully deleted telemetry file at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v0    # "deletedFile":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 246
    :cond_1
    const-string/jumbo v1, "HA-MetricsPersistence"

    const-string/jumbo v2, "Couldn\'t delete file, the reference to the file was null"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getSender()Lnet/hockeyapp/android/metrics/Sender;
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "sender":Lnet/hockeyapp/android/metrics/Sender;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sender":Lnet/hockeyapp/android/metrics/Sender;
    check-cast v0, Lnet/hockeyapp/android/metrics/Sender;

    .line 325
    .restart local v0    # "sender":Lnet/hockeyapp/android/metrics/Sender;
    :cond_0
    return-object v0
.end method

.method protected hasFilesAvailable()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFreeSpaceAvailable()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 270
    sget-object v6, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 271
    :try_start_0
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 274
    .local v3, "filesDir":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 278
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v7, v2

    sget-object v8, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    monitor-exit v6

    .line 281
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "filesDir":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 282
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected load(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 156
    const/4 v4, 0x0

    .line 158
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v8, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v3, "inputStream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v6, "streamReader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .local v1, "c":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 164
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    .end local v1    # "c":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "streamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v7, "HA-MetricsPersistence"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading telemetry data from file with exception message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    if-eqz v4, :cond_0

    .line 174
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 183
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 166
    .restart local v1    # "c":I
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "streamReader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 173
    if-eqz v5, :cond_0

    .line 174
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 176
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "HA-MetricsPersistence"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing stream."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 178
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    .end local v1    # "c":I
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "streamReader":Ljava/io/InputStreamReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "HA-MetricsPersistence"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing stream."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 178
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 173
    if-eqz v4, :cond_2

    .line 174
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 179
    :cond_2
    :goto_3
    throw v7

    .line 176
    :catch_3
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "HA-MetricsPersistence"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing stream."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 178
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-static {v8, v9}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 166
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v7

    goto/16 :goto_1
.end method

.method protected makeAvailable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 257
    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    if-eqz p1, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected nextAvailableFileInDirectory()Ljava/io/File;
    .locals 7

    .prologue
    .line 202
    sget-object v4, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 207
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_1

    .line 210
    aget-object v0, v1, v2

    .line 211
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-string/jumbo v3, "HA-MetricsPersistence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (ADDING TO SERVED AND RETURN)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v4

    .line 225
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 216
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "HA-MetricsPersistence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (WAS ALREADY SERVED)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v3, :cond_2

    .line 222
    const-string/jumbo v3, "HA-MetricsPersistence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " did not contain any "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "unserved files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_1

    .line 226
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected persist([Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->isFreeSpaceAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    const-string/jumbo v4, "HA-MetricsPersistence"

    const-string/jumbo v5, "Failed to persist file: Too many files on disk."

    invoke-static {v4, v5}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v1, "buffer":Ljava/lang/StringBuilder;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, p1, v4

    .line 99
    .local v0, "aData":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 100
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "aData":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "serializedData":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/metrics/Persistence;->writeToDisk(Ljava/lang/String;)Z

    move-result v2

    .line 107
    .local v2, "isSuccess":Z
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_0
.end method

.method protected setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 1
    .param p1, "sender"    # Lnet/hockeyapp/android/metrics/Sender;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    .line 335
    return-void
.end method

.method protected writeToDisk(Ljava/lang/String;)Z
    .locals 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "uuid":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 124
    .local v2, "isSuccess":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 126
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v7, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "filesDir":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 130
    const-string/jumbo v6, "HA-MetricsPersistence"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Saving data to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 132
    const/4 v6, 0x1

    :try_start_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    .line 136
    if-eqz v4, :cond_2

    .line 138
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    .line 144
    .end local v1    # "filesDir":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    .line 131
    :catchall_0
    move-exception v6

    :goto_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string/jumbo v6, "HA-MetricsPersistence"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to save data with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 136
    if-eqz v3, :cond_0

    .line 138
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "filesDir":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 141
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filesDir":Ljava/io/File;
    :catchall_1
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 138
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 141
    :cond_1
    :goto_4
    throw v6

    .line 139
    :catch_3
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "filesDir":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 133
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 131
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
