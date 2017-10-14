.class public Lorg/telegram/ui/VoIPActivity;
.super Landroid/app/Activity;
.source "VoIPActivity.java"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;,
        Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tg-voip-ui"


# instance fields
.field private acceptBtn:Landroid/view/View;

.field private acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private blurOverlayView1:Landroid/widget/ImageView;

.field private blurOverlayView2:Landroid/widget/ImageView;

.field private blurredPhoto1:Landroid/graphics/Bitmap;

.field private blurredPhoto2:Landroid/graphics/Bitmap;

.field private brandingText:Landroid/widget/TextView;

.field private callState:I

.field private cancelBtn:Landroid/view/View;

.field private chatBtn:Landroid/widget/ImageView;

.field private content:Landroid/widget/FrameLayout;

.field private currentAcceptAnim:Landroid/animation/Animator;

.field private currentDeclineAnim:Landroid/animation/Animator;

.field private declineBtn:Landroid/view/View;

.field private declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private didAcceptFromHere:Z

.field private durationText:Landroid/widget/TextView;

.field private ellAnimator:Landroid/animation/AnimatorSet;

.field private ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

.field private emojiAnimator:Landroid/animation/AnimatorSet;

.field emojiExpanded:Z

.field private emojiExpandedText:Landroid/widget/TextView;

.field emojiTooltipVisible:Z

.field private emojiWrap:Landroid/widget/LinearLayout;

.field private endBtn:Landroid/view/View;

.field private endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private endBtnIcon:Landroid/view/View;

.field private firstStateChange:Z

.field private hintTextView:Landroid/widget/TextView;

.field private isIncomingWaiting:Z

.field private keyEmojiViews:[Landroid/widget/ImageView;

.field private keyEmojiVisible:Z

.field private lastStateText:Ljava/lang/String;

.field private micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private nameText:Landroid/widget/TextView;

.field private photoView:Lorg/telegram/ui/Components/BackupImageView;

.field private retryAnim:Landroid/animation/AnimatorSet;

.field private retrying:Z

.field private signalBarsCount:I

.field private signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

.field private spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private stateText:Landroid/widget/TextView;

.field private stateText2:Landroid/widget/TextView;

.field private swipeViewsWrap:Landroid/widget/LinearLayout;

.field private textChangingAnim:Landroid/animation/Animator;

.field private tooltipAnim:Landroid/animation/Animator;

.field private tooltipHider:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->updateBlurredPhotos(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showDebugAlert()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->getFormattedDebugString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showRetry()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->startUpdatingCallDuration()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->updateKeyView()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->brandingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->signalBarsCount:I

    return v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/VoIPActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->signalBarsCount:I

    return p1
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4502(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->hideRetry()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method private callAccepted()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 916
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 918
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 919
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 920
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-boolean v4, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    if-eqz v4, :cond_2

    .line 922
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 924
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 925
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v5, "color"

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 930
    .local v1, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 931
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 932
    .local v2, "decSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    .line 933
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    .line 934
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    .line 935
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v6, "rotation"

    new-array v7, v8, [F

    fill-array-data v7, :array_4

    .line 936
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 932
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 939
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 940
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 941
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 942
    .local v0, "accSet":Landroid/animation/AnimatorSet;
    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_5

    .line 943
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 944
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    .line 942
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 946
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 947
    const-wide/16 v4, 0x7d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 948
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 952
    new-instance v4, Lorg/telegram/ui/VoIPActivity$18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$18;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 959
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 992
    .end local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_1
    return-void

    .line 927
    .end local v0    # "accSet":Landroid/animation/AnimatorSet;
    .end local v2    # "decSet":Landroid/animation/AnimatorSet;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v5, "color"

    new-array v6, v8, [I

    fill-array-data v6, :array_6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 928
    .restart local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 961
    .end local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 962
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 963
    .restart local v2    # "decSet":Landroid/animation/AnimatorSet;
    new-array v4, v12, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_7

    .line 964
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_8

    .line 965
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_9

    .line 966
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    .line 963
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 968
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 970
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 971
    .restart local v0    # "accSet":Landroid/animation/AnimatorSet;
    new-array v4, v12, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_a

    .line 972
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 973
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 974
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    .line 971
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 976
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 977
    const-wide/16 v4, 0x7d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 978
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 982
    new-instance v4, Lorg/telegram/ui/VoIPActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$19;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 990
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 925
    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 932
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 933
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 934
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 935
    :array_4
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    .line 942
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 927
    :array_6
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 963
    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 964
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 965
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 971
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "startVal"    # I
    .param p3, "endVal"    # I
    .param p4, "startDelay"    # I
    .param p5, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    .prologue
    .line 711
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 712
    .local v0, "a":Landroid/animation/ObjectAnimator;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 714
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    return-object v0
.end method

.method private createContentView()Landroid/view/View;
    .locals 39

    .prologue
    .line 447
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 448
    .local v18, "content":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 450
    new-instance v31, Lorg/telegram/ui/VoIPActivity$10;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPActivity$10;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/content/Context;)V

    .line 468
    .local v31, "photo":Lorg/telegram/ui/Components/BackupImageView;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 469
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 473
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 479
    .local v13, "branding":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    const-string/jumbo v3, "VoipInCallBranding"

    const v4, 0x7f070640

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 482
    .local v26, "logo":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    new-instance v3, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;-><init>(Lorg/telegram/ui/VoIPActivity;Lorg/telegram/ui/VoIPActivity$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->setBounds(IIII)V

    .line 486
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    :goto_0
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    .end local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v13, v3, v4, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 487
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 488
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_2
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 489
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 490
    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v13, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 491
    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    :goto_3
    or-int/lit8 v5, v5, 0x30

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/VoIPActivity;->brandingText:Landroid/widget/TextView;

    .line 494
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 495
    .local v30, "name":Landroid/widget/TextView;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->setSingleLine()V

    .line 496
    const/4 v3, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    const/4 v3, 0x1

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 499
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    :goto_4
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 500
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 501
    const-string/jumbo v3, "sans-serif-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x422c0000    # 43.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 505
    .local v35, "state":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->setSingleLine()V

    .line 507
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 508
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 509
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 510
    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    :goto_5
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 513
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42c40000    # 98.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    .line 516
    new-instance v35, Landroid/widget/TextView;

    .end local v35    # "state":Landroid/widget/TextView;
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 517
    .restart local v35    # "state":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->setSingleLine()V

    .line 519
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 520
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 521
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 522
    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 523
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    :goto_6
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 525
    const/16 v3, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42c40000    # 98.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    .line 530
    new-instance v28, Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    .line 531
    .local v28, "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    const v3, 0x7f02002a

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 533
    .local v29, "micIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 534
    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 536
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v33, Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    .line 539
    .local v33, "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    const v3, 0x7f02002a

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 541
    .local v34, "speakerIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 542
    invoke-virtual/range {v33 .. v34}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 544
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 547
    .local v16, "chat":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 548
    .local v17, "chatIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 549
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 551
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 554
    .local v36, "swipesWrap":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 556
    new-instance v12, Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v12, "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    const v3, -0xba43b3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    .line 558
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v3, -0x1

    const/16 v4, 0x46

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/16 v8, -0x23

    const/4 v9, 0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    new-instance v20, Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    .line 561
    .local v20, "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    const v3, -0x19e1bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    .line 562
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v3, -0x1

    const/16 v4, 0x46

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, -0x23

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x50

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 567
    .local v10, "acceptBtn":Landroid/widget/ImageView;
    new-instance v11, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 568
    .local v11, "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0xba43b3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 569
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    const v3, 0x7f0200a8

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 572
    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    .line 573
    .local v27, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 574
    const/high16 v3, -0x3cf90000    # -135.0f

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 575
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 576
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 579
    .local v19, "declineBtn":Landroid/widget/ImageView;
    new-instance v32, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct/range {v32 .. v32}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 580
    .local v32, "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0x19e1bc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 581
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    const v3, 0x7f0200a8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 584
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    const/4 v3, 0x0

    invoke-virtual {v12, v10, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    .line 587
    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    .line 589
    new-instance v22, Landroid/widget/FrameLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 590
    .local v22, "end":Landroid/widget/FrameLayout;
    new-instance v23, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 591
    .local v23, "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0x19e1bc

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 592
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    new-instance v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 594
    .local v24, "endInner":Landroid/widget/ImageView;
    const v3, 0x7f0200a8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 596
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const/16 v3, 0x46

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 598
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 601
    .local v14, "cancelBtn":Landroid/widget/ImageView;
    new-instance v15, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v15}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 602
    .local v15, "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const/4 v3, -0x1

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 603
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    const v3, 0x7f020072

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    const/high16 v3, -0x77000000

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 606
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 607
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x53

    const/high16 v6, 0x42500000    # 52.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 617
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_7
    const/4 v3, 0x4

    move/from16 v0, v25

    if-ge v0, v3, :cond_8

    .line 618
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 619
    .local v21, "emoji":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/16 v3, 0x16

    const/16 v4, 0x16

    if-nez v25, :cond_7

    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aput-object v21, v3, v25

    .line 617
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .end local v10    # "acceptBtn":Landroid/widget/ImageView;
    .end local v11    # "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v12    # "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .end local v14    # "cancelBtn":Landroid/widget/ImageView;
    .end local v15    # "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v16    # "chat":Landroid/widget/ImageView;
    .end local v17    # "chatIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "declineBtn":Landroid/widget/ImageView;
    .end local v20    # "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .end local v21    # "emoji":Landroid/widget/ImageView;
    .end local v22    # "end":Landroid/widget/FrameLayout;
    .end local v23    # "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v24    # "endInner":Landroid/widget/ImageView;
    .end local v25    # "i":I
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .end local v28    # "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .end local v29    # "micIcon":Landroid/graphics/drawable/Drawable;
    .end local v30    # "name":Landroid/widget/TextView;
    .end local v32    # "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v33    # "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .end local v34    # "speakerIcon":Landroid/graphics/drawable/Drawable;
    .end local v35    # "state":Landroid/widget/TextView;
    .end local v36    # "swipesWrap":Landroid/widget/LinearLayout;
    .restart local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v3, v26

    .line 486
    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->signalBarsDrawable:Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;

    move-object/from16 v26, v0

    goto/16 :goto_1

    .line 488
    .end local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 491
    :cond_3
    const/4 v5, 0x3

    goto/16 :goto_3

    .line 499
    .restart local v30    # "name":Landroid/widget/TextView;
    :cond_4
    const/4 v3, 0x3

    goto/16 :goto_4

    .line 511
    .restart local v35    # "state":Landroid/widget/TextView;
    :cond_5
    const/4 v3, 0x3

    goto/16 :goto_5

    .line 523
    :cond_6
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 620
    .restart local v10    # "acceptBtn":Landroid/widget/ImageView;
    .restart local v11    # "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v12    # "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .restart local v14    # "cancelBtn":Landroid/widget/ImageView;
    .restart local v15    # "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v16    # "chat":Landroid/widget/ImageView;
    .restart local v17    # "chatIcon":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "declineBtn":Landroid/widget/ImageView;
    .restart local v20    # "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .restart local v21    # "emoji":Landroid/widget/ImageView;
    .restart local v22    # "end":Landroid/widget/FrameLayout;
    .restart local v23    # "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v24    # "endInner":Landroid/widget/ImageView;
    .restart local v25    # "i":I
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v28    # "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .restart local v29    # "micIcon":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v33    # "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .restart local v34    # "speakerIcon":Landroid/graphics/drawable/Drawable;
    .restart local v36    # "swipesWrap":Landroid/widget/LinearLayout;
    :cond_7
    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_8

    .line 623
    .end local v21    # "emoji":Landroid/widget/ImageView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$11;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    const/4 v7, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    :goto_9
    or-int/lit8 v3, v3, 0x30

    invoke-static {v5, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$12;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 661
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x11

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42000000    # 32.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v3, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, -0xdcccccd

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "chat_gifSaveHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/high16 v7, 0x42280000    # 42.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    .line 679
    .local v6, "ellMaxAlpha":I
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v37, v0

    const/4 v3, 0x6

    new-array v0, v3, [Landroid/animation/Animator;

    move-object/from16 v38, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 681
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/16 v7, 0x96

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 682
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/16 v7, 0x12c

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 683
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 684
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 685
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x2

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 686
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    .line 680
    invoke-virtual/range {v37 .. v38}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$13;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 704
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    .line 706
    return-object v18

    .line 638
    .end local v6    # "ellMaxAlpha":I
    :cond_9
    const/4 v3, 0x5

    goto/16 :goto_9
.end method

.method private getFormattedDebugString()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 806
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "in":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 809
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 811
    .local v3, "offset":I
    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 812
    .local v2, "lineEnd":I
    if-ne v2, v7, :cond_1

    .line 813
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 814
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v5, "IN_USE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 816
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xff0100

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v3, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 822
    :cond_2
    :goto_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 824
    return-object v4

    .line 818
    :cond_3
    const-string/jumbo v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 819
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x55000001

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private hideRetry()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1036
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1038
    :cond_0
    iput-boolean v7, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    .line 1039
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1040
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1041
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1044
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1049
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1050
    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    .line 1052
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v4, "translationX"

    new-array v5, v8, [F

    aput v10, v5, v7

    .line 1053
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v10, v6, v7

    .line 1054
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1055
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1056
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1057
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1050
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1059
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1060
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1061
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1062
    new-instance v2, Lorg/telegram/ui/VoIPActivity$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$21;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1070
    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    .line 1071
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1072
    return-void

    .line 1046
    .end local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1047
    .restart local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 1044
    nop

    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 1050
    :array_1
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    .line 1046
    :array_2
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data
.end method

.method private setEmojiExpanded(Z)V
    .locals 13
    .param p1, "expanded"    # Z

    .prologue
    .line 1352
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-ne v6, p1, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1354
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    .line 1355
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_1

    .line 1356
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1357
    :cond_1
    if-eqz p1, :cond_2

    .line 1358
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .local v1, "loc":[I
    const/4 v6, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 1359
    .local v2, "loc2":[I
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1360
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1361
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1362
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1363
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 1364
    .local v3, "offsetY":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int v0, v6, v7

    .line 1365
    .local v0, "firstOffsetX":I
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1366
    .local v5, "set":Landroid/animation/AnimatorSet;
    const/4 v6, 0x7

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v3

    aput v12, v10, v11

    .line 1367
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v0

    aput v12, v10, v11

    .line 1368
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x40200000    # 2.5f

    aput v12, v10, v11

    .line 1369
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x40200000    # 2.5f

    aput v12, v10, v11

    .line 1370
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 1371
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 1372
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1373
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1366
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1375
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1376
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1377
    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    .line 1378
    new-instance v6, Lorg/telegram/ui/VoIPActivity$27;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$27;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1384
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1386
    .end local v0    # "firstOffsetX":I
    .end local v1    # "loc":[I
    .end local v2    # "loc2":[I
    .end local v3    # "offsetY":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1387
    .restart local v5    # "set":Landroid/animation/AnimatorSet;
    const/4 v6, 0x7

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1388
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1389
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1390
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1391
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 1392
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 1393
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1394
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1387
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1396
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1397
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1398
    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    .line 1399
    new-instance v6, Lorg/telegram/ui/VoIPActivity$28;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$28;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1405
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1358
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setEmojiTooltipVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1334
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    .line 1335
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1337
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v1, 0x1

    new-array v4, v1, [F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1339
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1340
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1341
    new-instance v1, Lorg/telegram/ui/VoIPActivity$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$26;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1347
    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    .line 1348
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1349
    return-void

    .line 1338
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStateTextAnimated(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "_newText"    # Ljava/lang/String;
    .param p2, "ellipsis"    # Z

    .prologue
    .line 1261
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1263
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    .line 1264
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    .line 1265
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 1267
    :cond_1
    if-eqz p2, :cond_4

    .line 1268
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1269
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1270
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1271
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 1272
    .local v2, "s":Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->setAlpha(I)V

    .line 1271
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1273
    .end local v2    # "s":Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v5, "..."

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1274
    .local v0, "ell":Landroid/text/SpannableString;
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1275
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1276
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1277
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1278
    move-object v1, v4

    .line 1284
    .end local v0    # "ell":Landroid/text/SpannableString;
    .end local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    .local v1, "newText":Ljava/lang/CharSequence;
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1287
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1288
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1289
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1290
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    .line 1291
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1292
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    .line 1293
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    .line 1294
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    .line 1295
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    .line 1296
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    .line 1297
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    .line 1298
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    .line 1299
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_5

    .line 1300
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1292
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1302
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1303
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1304
    new-instance v5, Lorg/telegram/ui/VoIPActivity$25;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VoIPActivity$25;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1317
    iput-object v3, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    .line 1318
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1280
    .end local v1    # "newText":Ljava/lang/CharSequence;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1281
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1282
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "newText":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1286
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1288
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1292
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1294
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 1295
    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 1296
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1298
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    .line 1299
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private showDebugAlert()V
    .locals 15

    .prologue
    .line 828
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->forceRating()V

    .line 831
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 832
    .local v8, "debugOverlay":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 833
    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 834
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 835
    .local v10, "pad":I
    mul-int/lit8 v0, v10, 0x2

    mul-int/lit8 v1, v10, 0x2

    invoke-virtual {v8, v10, v0, v10, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 837
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 838
    .local v13, "title":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 839
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 840
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 841
    const/16 v0, 0x11

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "libtgvoip v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPController;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    new-instance v12, Landroid/widget/ScrollView;

    invoke-direct {v12, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 846
    .local v12, "scroll":Landroid/widget/ScrollView;
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 847
    .local v9, "debugText":Landroid/widget/TextView;
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 848
    const/4 v0, 0x1

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 849
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 850
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 851
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->getFormattedDebugString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 853
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 856
    .local v7, "closeBtn":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 857
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 859
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 860
    const-string/jumbo v0, "Close"

    const v1, 0x7f070179

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 864
    .local v14, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-interface {v14, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    new-instance v0, Lorg/telegram/ui/VoIPActivity$15;

    invoke-direct {v0, p0, v14, v8}, Lorg/telegram/ui/VoIPActivity$15;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    new-instance v11, Lorg/telegram/ui/VoIPActivity$16;

    invoke-direct {v11, p0, v9, v8}, Lorg/telegram/ui/VoIPActivity$16;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 883
    .local v11, "r":Ljava/lang/Runnable;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v8, v11, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1217
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "VoipFailed"

    const v3, 0x7f07063d

    .line 1218
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1219
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "OK"

    const v3, 0x7f070440

    .line 1220
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1221
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1222
    .local v0, "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1223
    new-instance v1, Lorg/telegram/ui/VoIPActivity$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$24;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1229
    return-void
.end method

.method private showRetry()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 997
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 998
    iput-boolean v9, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    .line 999
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1001
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1003
    .local v1, "set":Landroid/animation/AnimatorSet;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1004
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v10, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1009
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    .line 1010
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v4, "translationX"

    new-array v5, v10, [F

    aput v11, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    .line 1011
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v5, "rotation"

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    .line 1013
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1014
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1015
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1016
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1009
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1018
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1019
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1020
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1021
    new-instance v2, Lorg/telegram/ui/VoIPActivity$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$20;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1031
    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    .line 1032
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1033
    return-void

    .line 1006
    .end local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v10, [I

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1007
    .restart local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 1004
    nop

    :array_0
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data

    .line 1009
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1011
    :array_2
    .array-data 4
        0x0
        -0x3cf90000    # -135.0f
    .end array-data

    .line 1006
    :array_3
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data
.end method

.method private startUpdatingCallDuration()V
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lorg/telegram/ui/VoIPActivity$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$17;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    .line 900
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 901
    return-void
.end method

.method private updateBlurredPhotos(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1410
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$29;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPActivity$29;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1439
    return-void
.end method

.method private updateKeyView()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v9, 0x0

    .line 784
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 803
    :cond_0
    return-void

    .line 786
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 787
    .local v5, "img":Lorg/telegram/ui/Components/IdenticonDrawable;
    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/IdenticonDrawable;->setColors([I)V

    .line 788
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;-><init>()V

    .line 790
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 791
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 792
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 793
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_0
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    invoke-static {v7, v9, v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    .line 796
    .local v6, "sha256":[B
    invoke-static {v6}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "emoji":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 799
    aget-object v7, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    .line 800
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 801
    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 794
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "emoji":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "sha256":[B
    :catch_0
    move-exception v7

    goto :goto_0

    .line 787
    nop

    :array_0
    .array-data 4
        0xffffff
        -0x1
        -0x66000001
        0x33ffffff
    .end array-data
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1323
    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v1, :cond_0

    .line 1324
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1325
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, v1, :cond_1

    .line 1329
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 1331
    :cond_1
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 6

    .prologue
    const v5, 0x7f0200e1

    const v4, 0x7f0200a6

    const/4 v3, 0x0

    .line 1233
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 1236
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1237
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    goto :goto_0

    .line 1239
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1240
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1241
    .local v0, "am":Landroid/media/AudioManager;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1242
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1243
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 1244
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1245
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1246
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1252
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1248
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    .line 1250
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    .line 1254
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1255
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-eqz v0, :cond_1

    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-nez v0, :cond_0

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0700e1

    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 136
    invoke-virtual {p0, v5}, Lorg/telegram/ui/VoIPActivity;->requestWindowFeature(I)Z

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 444
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 146
    invoke-virtual {p0, v5}, Lorg/telegram/ui/VoIPActivity;->setRequestedOrientation(I)V

    .line 150
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;

    move-result-object v0

    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setContentView(Landroid/view/View;)V

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 153
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 155
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 159
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$1;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_1
    invoke-virtual {p0, v6}, Lorg/telegram/ui/VoIPActivity;->setVolumeControlStream(I)V

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$2;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$3;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$4;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$5;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$6;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->onAudioSettingsChanged()V

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;)V

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$7;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$8;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$9;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 440
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 441
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "CallEmojiKeyTooltip"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v2, "CallEmojiKeyTooltip"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 173
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0xe4cab2
        -0xdaa483
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 721
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 722
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;)V

    .line 725
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 726
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 905
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 906
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 910
    :goto_0
    const/4 v0, 0x1

    .line 912
    :goto_1
    return v0

    .line 909
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto :goto_0

    .line 912
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 749
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 751
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 752
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    .line 753
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 758
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 759
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    .line 764
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 765
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    goto :goto_0

    .line 767
    :cond_2
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 768
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 769
    new-instance v0, Lorg/telegram/ui/VoIPActivity$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$14;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 777
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->reset()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 741
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 742
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    .line 744
    :cond_0
    return-void
.end method

.method public onSignalBarsCountChanged(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1207
    new-instance v0, Lorg/telegram/ui/VoIPActivity$23;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VoIPActivity$23;-><init>(Lorg/telegram/ui/VoIPActivity;I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1214
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1076
    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    .line 1077
    .local v0, "prevState":I
    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    .line 1078
    new-instance v1, Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/VoIPActivity$22;-><init>(Lorg/telegram/ui/VoIPActivity;II)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1203
    return-void
.end method
