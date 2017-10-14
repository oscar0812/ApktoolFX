.class Lorg/telegram/ui/InviteContactsActivity$8;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/InviteContactsActivity;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 511
    if-nez p2, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$2000(Lorg/telegram/ui/InviteContactsActivity;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 513
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "text":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.TEXT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v7, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/InviteContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v9, p1, Lorg/telegram/ui/Cells/InviteUserCell;

    if-eqz v9, :cond_0

    move-object v0, p1

    .line 526
    check-cast v0, Lorg/telegram/ui/Cells/InviteUserCell;

    .line 527
    .local v0, "cell":Lorg/telegram/ui/Cells/InviteUserCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/InviteUserCell;->getContact()Lorg/telegram/messenger/ContactsController$Contact;

    move-result-object v1

    .line 528
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v1, :cond_0

    .line 532
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$500(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/HashMap;

    move-result-object v9

    iget v10, v1, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "exists":Z
    if-eqz v3, :cond_3

    .line 533
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$500(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/HashMap;

    move-result-object v9

    iget v10, v1, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 534
    .local v5, "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$1700(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 540
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$1800(Lorg/telegram/ui/InviteContactsActivity;)V

    .line 541
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$2000(Lorg/telegram/ui/InviteContactsActivity;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$2100(Lorg/telegram/ui/InviteContactsActivity;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 542
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v7}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 546
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v7}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 547
    iget-object v7, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v7}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    .end local v5    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    :cond_3
    new-instance v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9, v1}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ContactsController$Contact;)V

    .line 537
    .restart local v5    # "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v9}, Lorg/telegram/ui/InviteContactsActivity;->access$1700(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 538
    iget-object v9, p0, Lorg/telegram/ui/InviteContactsActivity$8;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/GroupCreateSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 544
    :cond_4
    if-nez v3, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/InviteUserCell;->setChecked(ZZ)V

    goto :goto_2
.end method
