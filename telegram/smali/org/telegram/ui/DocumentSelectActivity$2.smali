.class Lorg/telegram/ui/DocumentSelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DocumentSelectActivity.java"


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
    .line 165
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 168
    const/4 v5, -0x1

    if-ne p1, v5, :cond_3

    .line 169
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$400(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$600(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 172
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 173
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 174
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v5, :cond_0

    .line 176
    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local v1    # "child":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment()V

    .line 192
    :cond_2
    return-void

    .line 182
    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 183
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-interface {v5, v6, v3}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V

    .line 187
    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$2;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .line 188
    .local v4, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->date:J

    goto :goto_1
.end method
