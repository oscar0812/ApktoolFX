.class public Lnet/hockeyapp/android/tasks/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_REDIRECTS:I = 0x6


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDownloadErrorMessage:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mFilename:Ljava/lang/String;

.field protected mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "notifier"    # Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mUrlString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method protected createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "remainingRedirects"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 143
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->setConnectionProperties(Ljava/net/HttpURLConnection;)V

    .line 145
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 146
    .local v0, "code":I
    const/16 v3, 0x12d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x12e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x12f

    if-ne v0, v3, :cond_1

    .line 150
    :cond_0
    if-nez p2, :cond_2

    .line 163
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_1
    :goto_0
    return-object v1

    .line 155
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "movedUrl":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v2, p2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 63
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 22
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 67
    const/4 v9, 0x0

    .line 68
    .local v9, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 71
    .local v12, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->getURLString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v15, "url":Ljava/net/URL;
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v2

    .line 73
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 75
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v11

    .line 76
    .local v11, "lengthOfFile":I
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string/jumbo v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 80
    const-string/jumbo v18, "The requested download does not appear to be a file."

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    .line 81
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 111
    if-eqz v12, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_0
    if-eqz v9, :cond_1

    .line 115
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v11    # "lengthOfFile":I
    .end local v15    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v18

    .line 117
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v11    # "lengthOfFile":I
    .restart local v15    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 118
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 86
    .local v14, "result":Z
    if-nez v14, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 87
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Could not create the dir(s):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v6    # "dir":Ljava/io/File;
    .end local v11    # "lengthOfFile":I
    .end local v14    # "result":Z
    .end local v15    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 107
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 111
    if-eqz v12, :cond_3

    .line 112
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_3
    if-eqz v9, :cond_1

    .line 115
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 117
    :catch_2
    move-exception v7

    .line 118
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v11    # "lengthOfFile":I
    .restart local v14    # "result":Z
    .restart local v15    # "url":Ljava/net/URL;
    :cond_4
    :try_start_5
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v8, "file":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    .end local v9    # "input":Ljava/io/InputStream;
    .local v10, "input":Ljava/io/InputStream;
    :try_start_6
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 94
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v13, "output":Ljava/io/OutputStream;
    const/16 v18, 0x400

    :try_start_7
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 96
    .local v5, "data":[B
    const-wide/16 v16, 0x0

    .line 97
    .local v16, "total":J
    :goto_2
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    .line 98
    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 99
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 100
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v5, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 106
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v16    # "total":J
    :catch_3
    move-exception v7

    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 103
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v16    # "total":J
    :cond_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 105
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v18

    .line 111
    if-eqz v13, :cond_6

    .line 112
    :try_start_8
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_6
    if-eqz v10, :cond_7

    .line 115
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_7
    :goto_3
    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    move-object v9, v10

    .line 119
    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 117
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v13    # "output":Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    .line 118
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 110
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v11    # "lengthOfFile":I
    .end local v13    # "output":Ljava/io/OutputStream;
    .end local v14    # "result":Z
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "total":J
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v18

    .line 111
    :goto_4
    if-eqz v12, :cond_8

    .line 112
    :try_start_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_8
    if-eqz v9, :cond_9

    .line 115
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 119
    :cond_9
    :goto_5
    throw v18

    .line 117
    :catch_5
    move-exception v7

    .line 118
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 110
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v11    # "lengthOfFile":I
    .restart local v14    # "result":Z
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto :goto_4

    .end local v9    # "input":Ljava/io/InputStream;
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v13    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v18

    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 106
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&type=apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 184
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 186
    :try_start_0
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 193
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    invoke-virtual {v5, p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "application/vnd.android.package-archive"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 203
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    .line 205
    new-instance v5, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 206
    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    .line 207
    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    .line 209
    .local v4, "policy":Landroid/os/StrictMode$VmPolicy;
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 212
    .end local v4    # "policy":Landroid/os/StrictMode$VmPolicy;
    :cond_1
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    if-eqz v3, :cond_2

    .line 215
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 250
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    :cond_2
    :goto_1
    return-void

    .line 220
    :cond_3
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_title:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 225
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    sget v6, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "message":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    sget v5, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_negative_button:I

    new-instance v6, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;

    invoke-direct {v6, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    sget v5, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_positive_button:I

    new-instance v6, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;

    invoke-direct {v6, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 246
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 227
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_2

    .line 187
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 171
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 176
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected setConnectionProperties(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 124
    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v1, "HockeySDK/Android 4.1.3"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 129
    const-string/jumbo v0, "connection"

    const-string/jumbo v1, "close"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
