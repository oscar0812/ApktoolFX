.class public Lnet/hockeyapp/android/tasks/GetFileSizeTask;
.super Lnet/hockeyapp/android/tasks/DownloadFileTask;
.source "GetFileSizeTask.java"


# instance fields
.field private mSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "notifier"    # Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lnet/hockeyapp/android/tasks/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 28
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->getURLString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "url":Ljava/net/URL;
    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v0

    .line 30
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 33
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->mSize:J

    return-wide v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->mSize:J

    .line 45
    iget-wide v0, p0, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->mSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 40
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
