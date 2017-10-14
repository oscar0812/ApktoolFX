.class Lorg/telegram/ui/Components/BotKeyboardView$1;
.super Ljava/lang/Object;
.source "BotKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotKeyboardView;->setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotKeyboardView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BotKeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/BotKeyboardView;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/telegram/ui/Components/BotKeyboardView$1;->this$0:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView$1;->this$0:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotKeyboardView;->access$000(Lorg/telegram/ui/Components/BotKeyboardView;)Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;->didPressedButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 117
    return-void
.end method
