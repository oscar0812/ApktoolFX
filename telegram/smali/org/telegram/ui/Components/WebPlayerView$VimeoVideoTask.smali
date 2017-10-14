.class Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VimeoVideoTask"
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

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 1
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 806
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->canRetry:Z

    .line 804
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    .line 807
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->videoId:Ljava/lang/String;

    .line 808
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 17
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "https://player.vimeo.com/video/%s/config"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, "playerCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 813
    const/4 v11, 0x0

    .line 841
    :goto_0
    return-object v11

    .line 816
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 817
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "request"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "files"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 818
    .local v4, "files":Lorg/json/JSONObject;
    const-string/jumbo v11, "hls"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 819
    const-string/jumbo v11, "hls"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 821
    .local v6, "hls":Lorg/json/JSONObject;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "url"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string/jumbo v13, "hls"

    aput-object v13, v11, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 841
    .end local v4    # "files":Lorg/json/JSONObject;
    .end local v6    # "hls":Lorg/json/JSONObject;
    .end local v8    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    .line 822
    .restart local v4    # "files":Lorg/json/JSONObject;
    .restart local v6    # "hls":Lorg/json/JSONObject;
    .restart local v8    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 823
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v11, "default_cdn"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "defaultCdn":Ljava/lang/String;
    const-string/jumbo v11, "cdns"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 825
    .local v1, "cdns":Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 826
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "url"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 838
    .end local v1    # "cdns":Lorg/json/JSONObject;
    .end local v2    # "defaultCdn":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "files":Lorg/json/JSONObject;
    .end local v6    # "hls":Lorg/json/JSONObject;
    .end local v8    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 839
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 829
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "files":Lorg/json/JSONObject;
    .restart local v8    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    const-string/jumbo v11, "progressive"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 830
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string/jumbo v13, "other"

    aput-object v13, v11, v12

    .line 831
    const-string/jumbo v11, "progressive"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 832
    .local v10, "progressive":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 833
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 834
    .local v5, "format":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "url"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 841
    .end local v4    # "files":Lorg/json/JSONObject;
    .end local v5    # "format":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v10    # "progressive":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 800
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 846
    if-eqz p1, :cond_2

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 858
    :cond_1
    :goto_0
    return-void

    .line 855
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
