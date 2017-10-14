.class Lorg/telegram/ui/DocumentSelectActivity$6;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 283
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v3

    .line 284
    .local v3, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    if-nez v3, :cond_1

    .line 356
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 288
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_5

    .line 289
    iget v5, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    const v6, 0x7f0200df

    if-ne v5, v6, :cond_3

    .line 290
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    .line 293
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment(Z)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 296
    .local v2, "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    iget-object v6, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v5, :cond_4

    .line 298
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    iget-object v6, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-static {v5, v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    .line 302
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    iget v6, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v7, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 300
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$100(Lorg/telegram/ui/DocumentSelectActivity;)V

    goto :goto_1

    .line 304
    .end local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 305
    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 306
    .restart local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    .line 307
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    iget v6, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 308
    .local v4, "topView":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 309
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    .line 311
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    .line 313
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5, v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 315
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 318
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 320
    .end local v2    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    .end local v4    # "topView":Landroid/view/View;
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_9

    .line 321
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v6, "AccessError"

    const v7, 0x7f070014

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v5, "/mnt/sdcard"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v0    # "file":Ljava/io/File;
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_a

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    .line 326
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v6, "FileUploadLimit"

    const v7, 0x7f07027e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v10}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 334
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 335
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 340
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$2300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 344
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z

    .line 345
    instance-of v5, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v5, :cond_0

    .line 346
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p1    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 337
    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto :goto_3

    .line 349
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-interface {v5, v6, v1}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
