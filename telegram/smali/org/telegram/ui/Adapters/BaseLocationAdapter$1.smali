.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;
.super Ljava/util/TimerTask;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

.field final synthetic val$coordinate:Landroid/location/Location;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->val$coordinate:Landroid/location/Location;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$000(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$002(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1$1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 91
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
