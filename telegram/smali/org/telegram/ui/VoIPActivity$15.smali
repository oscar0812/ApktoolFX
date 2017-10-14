.class Lorg/telegram/ui/VoIPActivity$15;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->showDebugAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field final synthetic val$debugOverlay:Landroid/widget/LinearLayout;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 866
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$15;->this$0:Lorg/telegram/ui/VoIPActivity;

    iput-object p2, p0, Lorg/telegram/ui/VoIPActivity$15;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lorg/telegram/ui/VoIPActivity$15;->val$debugOverlay:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 869
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$15;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$15;->val$debugOverlay:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 870
    return-void
.end method
