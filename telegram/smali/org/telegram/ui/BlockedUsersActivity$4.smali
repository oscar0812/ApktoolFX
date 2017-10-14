.class Lorg/telegram/ui/BlockedUsersActivity$4;
.super Ljava/lang/Object;
.source "BlockedUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlockedUsersActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BlockedUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlockedUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/BlockedUsersActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$4;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 261
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity$4;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/BlockedUsersActivity;->access$100(Lorg/telegram/ui/BlockedUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 262
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/BlockedUsersActivity$4;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/BlockedUsersActivity;->access$100(Lorg/telegram/ui/BlockedUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 265
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method
