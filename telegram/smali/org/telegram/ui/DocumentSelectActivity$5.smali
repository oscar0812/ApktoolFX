.class Lorg/telegram/ui/DocumentSelectActivity$5;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 233
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    const/4 v8, 0x0

    .line 276
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return v8

    .line 239
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v6

    .line 240
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    if-nez v6, :cond_1

    .line 241
    const/4 v8, 0x0

    goto :goto_0

    .line 243
    :cond_1
    iget-object v5, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 244
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_7

    .line 245
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v9, "AccessError"

    const v10, 0x7f070014

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    .line 247
    const/4 v8, 0x0

    goto :goto_0

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 250
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v10}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v9, "FileUploadLimit"

    const v10, 0x7f07027e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v13}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    .line 252
    const/4 v8, 0x0

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 256
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 260
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 263
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 264
    .local v7, "view2":Landroid/view/View;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 265
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    .end local v7    # "view2":Landroid/view/View;
    :cond_5
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 268
    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 269
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 270
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/DocumentSelectActivity;->access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z

    .line 271
    move-object/from16 v0, p1

    instance-of v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v8, :cond_6

    .line 272
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p1    # "view":Landroid/view/View;
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 274
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-static {v8}, Lorg/telegram/ui/DocumentSelectActivity;->access$1500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 276
    .end local v2    # "a":I
    .end local v3    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v4    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 265
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
