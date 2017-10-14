.class Lorg/telegram/ui/ChannelRightsEditActivity$4;
.super Ljava/lang/Object;
.source "ChannelRightsEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelRightsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 697
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$4;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 700
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$4;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 701
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 702
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$4;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 704
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method
