.class Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;
.super Ljava/lang/Object;
.source "PhotoPickerAlbumsCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)[Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;->didSelectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    .line 105
    :cond_0
    return-void
.end method
