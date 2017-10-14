.class Lorg/telegram/ui/ChannelEditInfoActivity$22;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 1200
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$22;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 1203
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$22;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$3100(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1204
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$22;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$3100(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1205
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1206
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$22;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$3100(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1207
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    if-eqz v3, :cond_0

    .line 1208
    check-cast v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->update()V

    .line 1205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_1
    return-void
.end method
