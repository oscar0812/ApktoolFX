.class Lorg/telegram/ui/ConvertGroupActivity$2;
.super Ljava/lang/Object;
.source "ConvertGroupActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ConvertGroupActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ConvertGroupActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 100
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ConvertGroupActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "ConvertGroupAlert"

    const v2, 0x7f070199

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 102
    const-string/jumbo v1, "ConvertGroupAlertWarning"

    const v2, 0x7f07019a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 103
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ConvertGroupActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ConvertGroupActivity$2$1;-><init>(Lorg/telegram/ui/ConvertGroupActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 109
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$2;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ConvertGroupActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 112
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_0
    return-void
.end method
