.class Lorg/telegram/ui/Components/ThemeEditorView$1$2;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$1;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ThemeEditorView$1;

    .prologue
    .line 938
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$1$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$1$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2402(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$1$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$1;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2500(Lorg/telegram/ui/Components/ThemeEditorView;)V

    .line 943
    return-void
.end method
