.class Lorg/telegram/ui/Cells/DialogsEmptyCell$1;
.super Ljava/lang/Object;
.source "DialogsEmptyCell.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/DialogsEmptyCell;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
