.class Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$3$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 295
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 296
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$802(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    .line 297
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3$1$1;->this$2:Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "ResetNotificationsText"

    const v5, 0x7f070516

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 304
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 306
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
