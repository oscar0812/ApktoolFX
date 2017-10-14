.class Lorg/telegram/ui/ProfileActivity$8$3;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$8;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$8;

    .prologue
    .line 801
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8$3;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 804
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8$3;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$8$3;->this$1:Lorg/telegram/ui/ProfileActivity$8;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;I)V

    .line 805
    return-void
.end method
