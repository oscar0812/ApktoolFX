.class Lorg/telegram/ui/PasscodeActivity$6;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PasscodeActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 284
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
