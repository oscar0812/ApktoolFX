.class Lorg/telegram/ui/SettingsActivity$11$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$11;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$11;Lorg/telegram/tgnet/TLRPC$TL_help_support;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$11;

    .prologue
    .line 962
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 965
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$11;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 966
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "support_id"

    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_support;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 967
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 968
    .local v1, "data":Lorg/telegram/tgnet/SerializedData;
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_help_support;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 969
    const-string/jumbo v5, "support_user"

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 970
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 971
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 973
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$11;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_help_support;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 980
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_support;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "user_id"

    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity$11$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_help_support;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_support;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 983
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 984
    return-void

    .line 974
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :catch_0
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
