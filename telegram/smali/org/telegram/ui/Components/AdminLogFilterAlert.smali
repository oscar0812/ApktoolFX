.class public Lorg/telegram/ui/Components/AdminLogFilterAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "AdminLogFilterAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;,
        Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

.field private adminsRow:I

.field private allAdminsRow:I

.field private currentAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field private delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;

.field private deleteRow:I

.field private editRow:I

.field private ignoreLayout:Z

.field private infoRow:I

.field private isMegagroup:Z

.field private leavingRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private membersRow:I

.field private pickerBottomLayout:Landroid/widget/FrameLayout;

.field private pinnedRow:I

.field private reqId:I

.field private restrictionsRow:I

.field private saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

.field private scrollOffsetY:I

.field private selectedAdmins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;
    .param p4, "megagroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "admins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    .line 95
    :cond_0
    if-eqz p3, :cond_1

    .line 96
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->selectedAdmins:Ljava/util/HashMap;

    .line 98
    :cond_1
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->isMegagroup:Z

    .line 100
    const/4 v8, 0x1

    .line 101
    .local v8, "rowCount":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->isMegagroup:Z

    if-eqz v1, :cond_2

    .line 102
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "rowCount":I
    .local v9, "rowCount":I
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->restrictionsRow:I

    move v8, v9

    .line 106
    .end local v9    # "rowCount":I
    .restart local v8    # "rowCount":I
    :goto_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "rowCount":I
    .restart local v9    # "rowCount":I
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adminsRow:I

    .line 107
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "rowCount":I
    .restart local v8    # "rowCount":I
    iput v9, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->membersRow:I

    .line 108
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "rowCount":I
    .restart local v9    # "rowCount":I
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->infoRow:I

    .line 109
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "rowCount":I
    .restart local v8    # "rowCount":I
    iput v9, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->deleteRow:I

    .line 110
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "rowCount":I
    .restart local v9    # "rowCount":I
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->editRow:I

    .line 111
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->isMegagroup:Z

    if-eqz v1, :cond_3

    .line 112
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "rowCount":I
    .restart local v8    # "rowCount":I
    iput v9, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->pinnedRow:I

    .line 116
    :goto_1
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->leavingRow:I

    .line 117
    add-int/lit8 v8, v8, 0x2

    .line 118
    iput v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->allAdminsRow:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "dialogBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 123
    new-instance v1, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert$1;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    .line 186
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/Components/AdminLogFilterAlert;->backgroundPaddingLeft:I

    const/4 v3, 0x0

    sget v4, Lorg/telegram/ui/Components/AdminLogFilterAlert;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 189
    new-instance v1, Lorg/telegram/ui/Components/AdminLogFilterAlert$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert$2;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adapter:Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v2, "dialogScrollGlow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AdminLogFilterAlert$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$3;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 324
    iget-object v11, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v12, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 327
    .local v10, "shadow":Landroid/view/View;
    const v1, 0x7f020090

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 328
    iget-object v11, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    const-string/jumbo v2, "Save"

    const v3, 0x7f07052b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    const-string/jumbo v2, "dialogTextBlue2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    new-instance v2, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$5;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adapter:Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->notifyDataSetChanged()V

    .line 344
    return-void

    .line 104
    .end local v10    # "shadow":Landroid/view/View;
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->restrictionsRow:I

    goto/16 :goto_0

    .line 114
    .end local v8    # "rowCount":I
    .restart local v9    # "rowCount":I
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->pinnedRow:I

    move v8, v9

    .end local v9    # "rowCount":I
    .restart local v8    # "rowCount":I
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->isMegagroup:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/AdminLogFilterAlert;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->allAdminsRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->selectedAdmins:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AdminLogFilterAlert;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->selectedAdmins:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->restrictionsRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adminsRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->membersRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->infoRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->deleteRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->editRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->pinnedRow:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->leavingRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->saveButton:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentAdmins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AdminLogFilterAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private updateLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 365
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 366
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 371
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 372
    .local v3, "top":I
    if-lez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 373
    .local v2, "newOffset":I
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 374
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 375
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;)V
    .locals 0
    .param p1, "adminLogFilterAlertDelegate"    # Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;

    .line 360
    return-void
.end method

.method public setCurrentAdmins(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChannelParticipant;>;"
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->currentAdmins:Ljava/util/ArrayList;

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adapter:Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert;->adapter:Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->notifyDataSetChanged()V

    .line 351
    :cond_0
    return-void
.end method
