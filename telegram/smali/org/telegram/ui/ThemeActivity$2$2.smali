.class Lorg/telegram/ui/ThemeActivity$2$2;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemeActivity$2;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$2$2;->this$1:Lorg/telegram/ui/ThemeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method
