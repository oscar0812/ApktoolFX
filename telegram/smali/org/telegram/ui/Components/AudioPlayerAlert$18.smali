.class Lorg/telegram/ui/Components/AudioPlayerAlert$18;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

.field final synthetic val$deleteForAll:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;[Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 829
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->val$deleteForAll:[Z

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

    .line 832
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 833
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->val$deleteForAll:[Z

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v4, v3

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 835
    return-void

    :cond_0
    move v1, v3

    .line 833
    goto :goto_0
.end method
