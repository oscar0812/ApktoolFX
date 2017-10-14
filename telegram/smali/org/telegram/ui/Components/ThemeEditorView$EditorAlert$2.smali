.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 587
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView;->access$202(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 588
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1502(Lorg/telegram/ui/Components/ThemeEditorView;I)I

    .line 589
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 590
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 591
    .local v1, "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "chat_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V

    .line 601
    .end local v1    # "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    :goto_1
    return-void

    .line 595
    .restart local v1    # "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->startEditing()V

    .line 596
    if-nez v0, :cond_1

    .line 597
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setColor(I)V

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)V

    goto :goto_1
.end method
