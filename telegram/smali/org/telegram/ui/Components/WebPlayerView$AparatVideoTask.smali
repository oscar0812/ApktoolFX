.class Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AparatVideoTask"
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
    .line 867
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->canRetry:Z

    .line 865
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    .line 868
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    .line 869
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 861
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 872
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "http://www.aparat.com/video/video/embed/vt/frame/showvideo/yes/videohash/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->videoId:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 873
    .local v7, "playerCode":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 874
    const/4 v8, 0x0

    .line 897
    :goto_0
    return-object v8

    .line 877
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$2500()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 878
    .local v3, "filelist":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 879
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, "jsonCode":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 881
    .local v4, "json":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 882
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 883
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 881
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 886
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 887
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "file"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 890
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "file"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 891
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string/jumbo v10, "other"

    aput-object v10, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 894
    .end local v0    # "a":I
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "filelist":Ljava/util/regex/Matcher;
    .end local v4    # "json":Lorg/json/JSONArray;
    .end local v5    # "jsonCode":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 895
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 897
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 861
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 902
    if-eqz p1, :cond_2

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 914
    :cond_1
    :goto_0
    return-void

    .line 911
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2400(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
