.class Lorg/telegram/ui/ProfileActivity$15$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$15;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$15;

    .prologue
    .line 1153
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$15$1;->this$1:Lorg/telegram/ui/ProfileActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1156
    if-nez p2, :cond_1

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15$1;->this$1:Lorg/telegram/ui/ProfileActivity$15;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15$1;->this$1:Lorg/telegram/ui/ProfileActivity$15;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_0

    .line 1160
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1161
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15$1;->this$1:Lorg/telegram/ui/ProfileActivity$15;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_0
.end method
