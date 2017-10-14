.class Lorg/telegram/ui/Components/AudioPlayerAlert$15;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 644
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 647
    instance-of v0, p1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v0, :cond_0

    .line 648
    check-cast p1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->didPressedButton()V

    .line 650
    :cond_0
    return-void
.end method
