.class Lorg/telegram/ui/SettingsActivity$9$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$9;

    .prologue
    .line 803
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$9$1;->this$1:Lorg/telegram/ui/SettingsActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 806
    if-nez p2, :cond_1

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$9$1;->this$1:Lorg/telegram/ui/SettingsActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3800(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$9$1;->this$1:Lorg/telegram/ui/SettingsActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$9;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3800(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_0

    .line 810
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 811
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    goto :goto_0
.end method
