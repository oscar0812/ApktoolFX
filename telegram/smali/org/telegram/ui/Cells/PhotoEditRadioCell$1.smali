.class Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;
.super Ljava/lang/Object;
.source "PhotoEditRadioCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoEditRadioCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    .line 77
    .local v0, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$000(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$200(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v3, v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$102(Lorg/telegram/ui/Cells/PhotoEditRadioCell;I)I

    .line 82
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$400(Lorg/telegram/ui/Cells/PhotoEditRadioCell;Z)V

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$500(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 84
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$300(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v3, v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->access$102(Lorg/telegram/ui/Cells/PhotoEditRadioCell;I)I

    goto :goto_0
.end method
