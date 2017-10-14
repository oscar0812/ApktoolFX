.class Lorg/telegram/ui/DialogsActivity$7$2$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$7$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$7$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$7$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/DialogsActivity$7$2;

    .prologue
    .line 736
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 739
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$7$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$7$2;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$7$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$7$2;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_0

    .line 740
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$7$2;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$7$2;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7$2;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_0
.end method
