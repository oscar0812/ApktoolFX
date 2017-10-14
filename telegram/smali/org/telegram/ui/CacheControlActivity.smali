.class public Lorg/telegram/ui/CacheControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private audioSize:J

.field private cacheInfoRow:I

.field private cacheRow:I

.field private cacheSize:J

.field private calculating:Z

.field private volatile canceled:Z

.field private clear:[Z

.field private databaseInfoRow:I

.field private databaseRow:I

.field private databaseSize:J

.field private documentsSize:J

.field private keepMediaInfoRow:I

.field private keepMediaRow:I

.field private listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private musicSize:J

.field private photoSize:J

.field private rowCount:I

.field private totalSize:J

.field private videoSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 69
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 70
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 71
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 72
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 73
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 74
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 75
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 76
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clear:[Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clear:[Z

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/CacheControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p1
.end method

.method private cleanupFolders()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 186
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v1, "Loading"

    const v2, 0x7f07035a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 189
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 190
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method private getDirectorySize(Ljava/io/File;I)J
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "documentsMusicType"    # I

    .prologue
    .line 145
    if-eqz p1, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_2

    .line 146
    :cond_0
    const-wide/16 v6, 0x0

    .line 181
    :cond_1
    :goto_0
    return-wide v6

    .line 148
    :cond_2
    const-wide/16 v6, 0x0

    .line 149
    .local v6, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, "array":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 154
    iget-boolean v5, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_3

    .line 155
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 157
    :cond_3
    aget-object v3, v1, v0

    .line 158
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x1

    if-eq p2, v5, :cond_4

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    .line 159
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, ".m4a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 161
    :cond_5
    const/4 v5, 0x1

    if-ne p2, v5, :cond_8

    .line 153
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    .restart local v4    # "name":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x2

    if-eq p2, v5, :cond_6

    .line 168
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 169
    invoke-direct {p0, v3, p2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 171
    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 175
    .end local v0    # "a":I
    .end local v1    # "array":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "StorageUsage"

    const v3, 0x7f0705c0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 300
    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 302
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 304
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 306
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 633
    const/16 v0, 0xc

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    .line 87
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I

    .line 88
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I

    .line 89
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRow:I

    .line 90
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I

    .line 92
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseRow:I

    .line 93
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cache4.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 98
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_0
    return-void
.end method
