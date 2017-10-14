.class Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;
.super Ljava/util/TimerTask;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    .prologue
    .line 812
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 816
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2500(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 817
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2502(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 874
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
