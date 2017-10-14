.class Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitchStreamVideoTask"
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
    .line 974
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->canRetry:Z

    .line 972
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    .line 975
    iput-object p3, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    .line 976
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->currentUrl:Ljava/lang/String;

    .line 977
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 967
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 20
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 980
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 981
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "Client-ID"

    const-string/jumbo v15, "jzkbprff40iqj646a697cyrvl0zt2m6"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    const/16 v15, 0x26

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .local v6, "idx":I
    if-lez v6, :cond_0

    .line 984
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    .line 986
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "https://api.twitch.tv/kraken/streams/%s?stream_type=all"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v5, v1}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v12

    .line 987
    .local v12, "streamCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 988
    const/4 v14, 0x0

    .line 1012
    :goto_0
    return-object v14

    .line 991
    :cond_1
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    .local v8, "obj":Lorg/json/JSONObject;
    const-string/jumbo v14, "stream"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 993
    .local v11, "stream":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "https://api.twitch.tv/api/channels/%s/access_token"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v5, v1}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, "accessTokenCode":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 995
    .local v2, "accessToken":Lorg/json/JSONObject;
    const-string/jumbo v14, "sig"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 996
    .local v10, "sig":Ljava/lang/String;
    const-string/jumbo v14, "token"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 997
    .local v13, "token":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "https://youtube.googleapis.com/v/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 998
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "allow_source=true&allow_audio_only=true&allow_spectre=true&player=twitchweb&segment_preference=4&p="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1003
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide v18, 0x416312d000000000L    # 1.0E7

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "&sig="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "&token="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1006
    .local v9, "params":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "https://usher.ttvnw.net/api/channel/hls/%s.m3u8?%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v9, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, "m3uUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    const/4 v15, 0x1

    const-string/jumbo v16, "hls"

    aput-object v16, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v2    # "accessToken":Lorg/json/JSONObject;
    .end local v3    # "accessTokenCode":Ljava/lang/String;
    .end local v7    # "m3uUrl":Ljava/lang/String;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "params":Ljava/lang/String;
    .end local v10    # "sig":Ljava/lang/String;
    .end local v11    # "stream":Lorg/json/JSONObject;
    .end local v13    # "token":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1009
    :catch_0
    move-exception v4

    .line 1010
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1012
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 967
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1017
    if-eqz p1, :cond_2

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1024
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1029
    :cond_1
    :goto_0
    return-void

    .line 1026
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
