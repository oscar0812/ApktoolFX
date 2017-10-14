.class Lorg/telegram/ui/ChangeChatNameActivity$1$1;
.super Ljava/lang/Object;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeChatNameActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeChatNameActivity$1;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$1;

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

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChangeChatNameActivity;->access$302(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$402(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChangeChatNameActivity;->access$002(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z

    .line 124
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
