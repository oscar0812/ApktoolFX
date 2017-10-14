.class Lorg/telegram/ui/Cells/ManageChatUserCell$1;
.super Ljava/lang/Object;
.source "ManageChatUserCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ManageChatUserCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/ManageChatUserCell;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$000(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;->onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    .line 95
    return-void
.end method
