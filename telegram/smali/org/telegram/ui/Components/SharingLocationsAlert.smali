.class public Lorg/telegram/ui/Components/SharingLocationsAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SharingLocationsAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;,
        Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;

.field private delegate:Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;

.field private ignoreLayout:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private reqId:I

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private textView:Landroid/widget/TextView;

.field private urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharingLocationsAlertDelegate"    # Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;

    .prologue
    const/high16 v6, 0x42400000    # 48.0f

    const/4 v0, -0x1

    const/high16 v12, 0x41900000    # 18.0f

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 59
    invoke-direct {p0, p1, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 60
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 61
    iput-object p2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->delegate:Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "dialogBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    new-instance v1, Lorg/telegram/ui/Components/SharingLocationsAlert$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharingLocationsAlert$1;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/Components/SharingLocationsAlert;->backgroundPaddingLeft:I

    sget v4, Lorg/telegram/ui/Components/SharingLocationsAlert;->backgroundPaddingLeft:I

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 132
    new-instance v1, Lorg/telegram/ui/Components/SharingLocationsAlert$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharingLocationsAlert$2;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->adapter:Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 151
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v2, "dialogScrollGlow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SharingLocationsAlert$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$3;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SharingLocationsAlert$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$4;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 170
    iget-object v9, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v10, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 173
    .local v8, "shadow":Landroid/view/View;
    const v1, 0x7f020090

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    iget-object v9, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v7, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v7, p1, v11}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;Z)V

    .line 177
    .local v7, "pickerBottomLayout":Lorg/telegram/ui/Components/PickerBottomLayout;
    const-string/jumbo v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setBackgroundColor(I)V

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v11, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextRed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "StopAllLocationSharings"

    const v2, 0x7f0705bb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/SharingLocationsAlert$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$5;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextBlue2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Close"

    const v2, 0x7f070179

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v11, v2, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 192
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/SharingLocationsAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SharingLocationsAlert$6;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, v7, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->adapter:Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SharingLocationsAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SharingLocationsAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/SharingLocationsAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SharingLocationsAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lorg/telegram/ui/Components/SharingLocationsAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->delegate:Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/SharingLocationsAlert;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->textView:Landroid/widget/TextView;

    return-object p1
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

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 217
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 218
    .local v3, "top":I
    if-lez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 219
    .local v2, "newOffset":I
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 220
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 227
    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    if-ne p1, v0, :cond_0

    .line 228
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->dismiss()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert;->adapter:Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 239
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 240
    return-void
.end method
