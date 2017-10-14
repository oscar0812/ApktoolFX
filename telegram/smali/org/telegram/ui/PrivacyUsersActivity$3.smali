.class Lorg/telegram/ui/PrivacyUsersActivity$3;
.super Ljava/lang/Object;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyUsersActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    if-ltz p2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 181
    :goto_0
    return v2

    .line 164
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$502(Lorg/telegram/ui/PrivacyUsersActivity;I)I

    .line 166
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-array v1, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "Delete"

    const v5, 0x7f0701cc

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 168
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacyUsersActivity$3$1;-><init>(Lorg/telegram/ui/PrivacyUsersActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$3;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PrivacyUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v2, v3

    .line 181
    goto :goto_0
.end method
