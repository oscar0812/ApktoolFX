.class Lorg/telegram/ui/WallpapersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/WallpapersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 451
    iput-object p2, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 452
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 462
    .local v0, "count":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 465
    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 470
    int-to-long v0, p1

    return-wide v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 481
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/WallpaperCell;

    .line 482
    .local v0, "wallpaperCell":Lorg/telegram/ui/Cells/WallpaperCell;
    if-nez p2, :cond_2

    .line 483
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v4, v1, v4, v5}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/drawable/Drawable;Z)V

    .line 497
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 483
    goto :goto_0

    .line 485
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 486
    if-ne p2, v3, :cond_4

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$1000(Lorg/telegram/ui/WallpapersActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v1, v3}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 490
    :cond_4
    add-int/lit8 p2, p2, -0x2

    .line 495
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v2

    :cond_6
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 493
    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 475
    new-instance v0, Lorg/telegram/ui/Cells/WallpaperCell;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;-><init>(Landroid/content/Context;)V

    .line 476
    .local v0, "view":Lorg/telegram/ui/Cells/WallpaperCell;
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
