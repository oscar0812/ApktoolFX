.class Lorg/telegram/ui/DataSettingsActivity$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DataSettingsActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_15

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const/4 v3, 0x7

    new-array v0, v3, [Z

    move-object/from16 v16, v0

    .line 138
    .local v16, "maskValues":[Z
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v10, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v15, 0x0

    .line 141
    .local v15, "mask":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 142
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 149
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 150
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 151
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    const/4 v3, 0x7

    if-ge v9, v3, :cond_14

    .line 154
    const/16 v17, 0x0

    .line 155
    .local v17, "name":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 156
    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    aput-boolean v3, v16, v9

    .line 157
    const-string/jumbo v3, "LocalPhotoCache"

    const v4, 0x7f070363

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 177
    :cond_4
    :goto_4
    new-instance v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v12, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 178
    .local v12, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 179
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string/jumbo v3, ""

    aget-boolean v4, v16, v9

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 182
    const-string/jumbo v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 183
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/DataSettingsActivity$2$1;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[Z)V

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 143
    .end local v9    # "a":I
    .end local v12    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v17    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 144
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto/16 :goto_1

    .line 145
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 146
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget v15, v3, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto/16 :goto_1

    .line 156
    .restart local v9    # "a":I
    .restart local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 158
    :cond_8
    const/4 v3, 0x1

    if-ne v9, v3, :cond_a

    .line 159
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    aput-boolean v3, v16, v9

    .line 160
    const-string/jumbo v3, "AudioAutodownload"

    const v4, 0x7f0700b7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 159
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 161
    :cond_a
    const/4 v3, 0x2

    if-ne v9, v3, :cond_c

    .line 162
    and-int/lit8 v3, v15, 0x40

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_6
    aput-boolean v3, v16, v9

    .line 163
    const-string/jumbo v3, "VideoMessagesAutodownload"

    const v4, 0x7f070630

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 162
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .line 164
    :cond_c
    const/4 v3, 0x3

    if-ne v9, v3, :cond_e

    .line 165
    and-int/lit8 v3, v15, 0x4

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_7
    aput-boolean v3, v16, v9

    .line 166
    const-string/jumbo v3, "LocalVideoCache"

    const v4, 0x7f070364

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 165
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 167
    :cond_e
    const/4 v3, 0x4

    if-ne v9, v3, :cond_10

    .line 168
    and-int/lit8 v3, v15, 0x8

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_8
    aput-boolean v3, v16, v9

    .line 169
    const-string/jumbo v3, "FilesDataUsage"

    const v4, 0x7f07027f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 168
    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 170
    :cond_10
    const/4 v3, 0x5

    if-ne v9, v3, :cond_12

    .line 171
    and-int/lit8 v3, v15, 0x10

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_9
    aput-boolean v3, v16, v9

    .line 172
    const-string/jumbo v3, "AttachMusic"

    const v4, 0x7f0700ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 171
    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    .line 173
    :cond_12
    const/4 v3, 0x6

    if-ne v9, v3, :cond_4

    .line 174
    and-int/lit8 v3, v15, 0x20

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_a
    aput-boolean v3, v16, v9

    .line 175
    const-string/jumbo v3, "LocalGifCache"

    const v4, 0x7f070361

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 174
    :cond_13
    const/4 v3, 0x0

    goto :goto_a

    .line 193
    .end local v17    # "name":Ljava/lang/String;
    :cond_14
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 194
    .local v11, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    const-string/jumbo v3, "Save"

    const v4, 0x7f07052b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 196
    const-string/jumbo v3, "dialogTextBlue2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 197
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$2;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v10, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 247
    .end local v9    # "a":I
    .end local v10    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v11    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v15    # "mask":I
    .end local v16    # "maskValues":[Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_16

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v4}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 249
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_17

    .line 250
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 251
    .local v18, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DataSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "UseLessDataNever"

    const v8, 0x7f070601

    .line 252
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "UseLessDataOnMobile"

    const v8, 0x7f070602

    .line 253
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "UseLessDataAlways"

    const v8, 0x7f070600

    .line 254
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string/jumbo v6, "VoipUseLessData"

    const v7, 0x7f070653

    .line 255
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VoipDataSaving"

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Lorg/telegram/ui/DataSettingsActivity$2$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$2$3;-><init>(Lorg/telegram/ui/DataSettingsActivity$2;Landroid/content/SharedPreferences;I)V

    .line 251
    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v13

    .line 278
    .local v13, "dlg":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/DataSettingsActivity;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 279
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 280
    .end local v13    # "dlg":Landroid/app/Dialog;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_18

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 282
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_19

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 284
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_1a

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/DataUsageActivity;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/telegram/ui/DataUsageActivity;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 286
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    new-instance v4, Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ProxySettingsActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DataSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
