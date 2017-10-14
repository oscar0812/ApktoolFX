.class Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;
.super Ljava/lang/Object;
.source "TextPaintView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private beforeCursorPosition:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getLineCount()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setSelection(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->text:Ljava/lang/String;

    .line 67
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    .line 68
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 73
    return-void
.end method
