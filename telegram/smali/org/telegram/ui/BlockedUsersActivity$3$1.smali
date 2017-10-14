.class Lorg/telegram/ui/BlockedUsersActivity$3$1;
.super Ljava/lang/Object;
.source "BlockedUsersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlockedUsersActivity$3;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/BlockedUsersActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlockedUsersActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/BlockedUsersActivity$3;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$3$1;->this$1:Lorg/telegram/ui/BlockedUsersActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity$3$1;->this$1:Lorg/telegram/ui/BlockedUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/BlockedUsersActivity$3;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/BlockedUsersActivity;->access$000(Lorg/telegram/ui/BlockedUsersActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockUser(I)V

    .line 132
    :cond_0
    return-void
.end method
