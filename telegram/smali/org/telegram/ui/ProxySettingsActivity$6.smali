.class Lorg/telegram/ui/ProxySettingsActivity$6;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$6;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$6;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$6;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$600(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$602(Lorg/telegram/ui/ProxySettingsActivity;Z)Z

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$6;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->access$300(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$6;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->access$600(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 370
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
