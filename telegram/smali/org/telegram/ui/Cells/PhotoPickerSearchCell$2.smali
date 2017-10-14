.class Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;
.super Ljava/lang/Object;
.source "PhotoPickerSearchCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoPickerSearchCell;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->access$300(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerSearchCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->access$300(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;->didPressedSearchButton(I)V

    .line 136
    :cond_0
    return-void
.end method
