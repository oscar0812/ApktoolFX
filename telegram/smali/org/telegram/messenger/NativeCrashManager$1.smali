.class final Lorg/telegram/messenger/NativeCrashManager$1;
.super Ljava/lang/Thread;
.source "NativeCrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NativeCrashManager;->uploadDumpAndLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dumpFilename:Ljava/lang/String;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$logFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 65
    :try_start_0
    new-instance v2, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-direct {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;-><init>()V

    .line 66
    .local v2, "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    invoke-virtual {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 68
    new-instance v6, Ljava/io/File;

    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, "attachmentUri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 70
    .local v3, "input":Ljava/io/InputStream;
    const-string/jumbo v6, "attachment0"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v3, v8}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 72
    new-instance v6, Ljava/io/File;

    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    const-string/jumbo v6, "log"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v3, v8}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 76
    invoke-virtual {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 78
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "https://rink.hockeyapp.net/api/2/apps/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/crashes/upload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 79
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    const-string/jumbo v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v6, "Content-Type"

    invoke-virtual {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v6, "Content-Length"

    invoke-virtual {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v4, "outputStream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 86
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 87
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "response code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 96
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 98
    .end local v0    # "attachmentUri":Landroid/net/Uri;
    .end local v2    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 96
    iget-object v6, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 96
    iget-object v7, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lorg/telegram/messenger/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    throw v6
.end method
