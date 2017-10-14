.class final Lorg/telegram/messenger/AndroidUtilities$6;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1827
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$address:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$port:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$user:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x0

    .line 1830
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1831
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "proxy_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1832
    const-string/jumbo v2, "proxy_ip"

    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$address:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1833
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$port:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1834
    .local v1, "p":I
    const-string/jumbo v2, "proxy_port"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1835
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1836
    const-string/jumbo v2, "proxy_pass"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1840
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$user:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1841
    const-string/jumbo v2, "proxy_user"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1845
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1846
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$address:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$user:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$password:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1848
    return-void

    .line 1838
    :cond_0
    const-string/jumbo v2, "proxy_pass"

    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$password:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1843
    :cond_1
    const-string/jumbo v2, "proxy_user"

    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$user:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
