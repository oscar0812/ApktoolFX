.class Lorg/telegram/ui/ChannelCreateActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$2;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 218
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
