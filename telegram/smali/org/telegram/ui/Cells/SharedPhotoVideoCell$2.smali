.class Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;
.super Ljava/lang/Object;
.source "SharedPhotoVideoCell.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->access$100(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "a":I
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->access$100(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->access$200(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[I

    move-result-object v3

    aget v3, v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->access$300(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;->didLongClickItem(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;ILorg/telegram/messenger/MessageObject;I)Z

    move-result v1

    .line 185
    .end local v0    # "a":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
