.class Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitchClipVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private currentUrl:Ljava/lang/String;

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;

    .prologue
    .line 924
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->canRetry:Z

    .line 922
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->results:[Ljava/lang/String;

    .line 925
    iput-object p3, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->videoId:Ljava/lang/String;

    .line 926
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->currentUrl:Ljava/lang/String;

    .line 927
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 917
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 930
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v9, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->currentUrl:Ljava/lang/String;

    invoke-virtual {v8, p0, v9, v7, v11}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v6

    .line 931
    .local v6, "playerCode":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-object v7

    .line 935
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$2600()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 936
    .local v2, "filelist":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 937
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, "jsonCode":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 939
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "quality_options"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 940
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 941
    .local v5, "obj":Lorg/json/JSONObject;
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "source"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 942
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string/jumbo v10, "other"

    aput-object v10, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "filelist":Ljava/util/regex/Matcher;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonCode":Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->results:[Ljava/lang/String;

    aget-object v7, v7, v11

    goto :goto_0

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 917
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 952
    if-eqz p1, :cond_2

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 964
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
