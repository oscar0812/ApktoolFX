.class Lorg/telegram/ui/ProxySettingsActivity$2;
.super Ljava/lang/Object;
.source "ProxySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProxySettingsActivity;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$100(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$102(Lorg/telegram/ui/ProxySettingsActivity;Z)Z

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$200(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProxySettingsActivity;->access$100(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$100(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$300(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "proxy_enabled_calls"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$300(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->access$100(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 206
    return-void

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0
.end method
