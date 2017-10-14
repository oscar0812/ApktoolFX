.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;
.super Ljava/util/TimerTask;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1815
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1819
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4400(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1820
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4402(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4500(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    .line 1825
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
