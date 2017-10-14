.class Lorg/telegram/ui/SettingsActivity$6$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$6;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$6;

    .prologue
    .line 671
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$6$1;->this$1:Lorg/telegram/ui/SettingsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    if-nez p2, :cond_1

    .line 675
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 677
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZI)V

    goto :goto_0

    .line 678
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 679
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    goto :goto_0

    .line 680
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 681
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->forceResetDialogs()V

    goto :goto_0
.end method
