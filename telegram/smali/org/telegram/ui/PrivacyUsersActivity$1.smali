.class Lorg/telegram/ui/PrivacyUsersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 102
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 103
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->finishFragment()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-ne p1, v3, :cond_0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "isAlwaysShare"

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string/jumbo v2, "isGroup"

    iget-object v3, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyUsersActivity;->access$100(Lorg/telegram/ui/PrivacyUsersActivity;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    new-instance v1, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 109
    .local v1, "fragment":Lorg/telegram/ui/GroupCreateActivity;
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyUsersActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$1;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 124
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/PrivacyUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 106
    .end local v1    # "fragment":Lorg/telegram/ui/GroupCreateActivity;
    :cond_2
    const-string/jumbo v2, "isNeverShare"

    goto :goto_1
.end method
