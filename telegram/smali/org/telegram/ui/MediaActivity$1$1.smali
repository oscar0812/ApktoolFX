.class Lorg/telegram/ui/MediaActivity$1$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;

.field final synthetic val$deleteForAll:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;[Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$1$1;->val$deleteForAll:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 370
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$1$1;->val$deleteForAll:[Z

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$1;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v4, v3

    .line 371
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$1;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 372
    return-void

    :cond_0
    move v1, v3

    .line 370
    goto :goto_0
.end method
