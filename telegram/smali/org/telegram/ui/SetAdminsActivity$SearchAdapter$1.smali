.class Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;
.super Ljava/util/TimerTask;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    .prologue
    .line 486
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1800(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 491
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1802(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1900(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    .line 496
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
