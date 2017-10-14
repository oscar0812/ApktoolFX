.class public Lorg/telegram/ui/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LaunchActivity$VcardData;
    }
.end annotation


# static fields
.field private static layerFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static rightFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundTablet:Landroid/view/View;

.field private contactsToSend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionState:I

.field private documentsMimeType:Ljava/lang/String;

.field private documentsOriginalPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private englishLocaleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private loadingLocaleDialog:Z

.field private localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private lockRunnable:Ljava/lang/Runnable;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private photoPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private sendingText:Ljava/lang/String;

.field private shadowTablet:Landroid/widget/FrameLayout;

.field private shadowTabletSide:Landroid/widget/FrameLayout;

.field private sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

.field private systemLocaleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabletFullSize:Z

.field private videoPath:Ljava/lang/String;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/LaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/Integer;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # [Ljava/lang/String;
    .param p11, "x11"    # I

    .prologue
    .line 102
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "x2"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LaunchActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private checkFreeDiscSpace()V
    .locals 4

    .prologue
    .line 2231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2234
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$23;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private checkLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 573
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_9

    .line 578
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 579
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 580
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 581
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 582
    .local v1, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 583
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 585
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v0, v0, -0x1

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 590
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 591
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 592
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 595
    .end local v0    # "a":I
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 596
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 595
    goto :goto_2

    :cond_7
    move v2, v3

    .line 596
    goto :goto_3

    :cond_8
    move v4, v3

    .line 597
    goto :goto_4

    .line 599
    :cond_9
    iput-boolean v5, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 600
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 601
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 602
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 603
    .restart local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_a

    move-object v2, v1

    .line 604
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 606
    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 608
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v0, v0, -0x1

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 611
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    .line 612
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 615
    .end local v0    # "a":I
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 617
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    goto :goto_6
.end method

.method private getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2223
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2224
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2225
    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2227
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .locals 81
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 660
    invoke-static/range {p0 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    const/16 v57, 0x1

    .line 1313
    :goto_0
    return v57

    .line 663
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v41

    .line 664
    .local v41, "flags":I
    if-nez p4, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v4, :cond_2

    .line 665
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 666
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 667
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    .line 668
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    .line 669
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1313
    const/16 v57, 0x0

    goto :goto_0

    .line 671
    :cond_2
    const/16 v57, 0x0

    .line 673
    .local v57, "pushOpened":Z
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    .line 674
    .local v61, "push_user_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 675
    .local v58, "push_chat_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 676
    .local v59, "push_enc_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    .line 677
    .local v60, "push_msg_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    .line 678
    .local v49, "open_settings":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 679
    .local v48, "open_new_dialog":Ljava/lang/Integer;
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v15, "dialogId"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 680
    .local v34, "dialogId":J
    :goto_1
    const/16 v65, 0x0

    .line 681
    .local v65, "showDialogsList":Z
    const/16 v67, 0x0

    .line 682
    .local v67, "showPlayer":Z
    const/16 v66, 0x0

    .line 684
    .local v66, "showLocations":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 685
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 686
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 687
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 688
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 689
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    .line 690
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 691
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 693
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x100000

    and-int v4, v4, v41

    if-nez v4, :cond_e

    .line 694
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    if-nez p3, :cond_e

    .line 695
    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 696
    const/16 v40, 0x0

    .line 697
    .local v40, "error":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v72

    .line 698
    .local v72, "type":Ljava/lang/String;
    if-eqz v72, :cond_1a

    const-string/jumbo v4, "text/x-vcard"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 700
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v15, "android.intent.extra.STREAM"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/net/Uri;

    .line 701
    .local v73, "uri":Landroid/net/Uri;
    if-eqz v73, :cond_19

    .line 702
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 703
    .local v29, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v29

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v68

    .line 704
    .local v68, "stream":Ljava/io/InputStream;
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v80, "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    const/16 v30, 0x0

    .line 707
    .local v30, "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v15, "UTF-8"

    move-object/from16 v0, v68

    invoke-direct {v4, v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 709
    .local v25, "bufferedReader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v44

    .local v44, "line":Ljava/lang/String;
    if-eqz v44, :cond_16

    .line 710
    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 711
    const-string/jumbo v4, ":"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 712
    .local v22, "args":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    .line 715
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "BEGIN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const-string/jumbo v15, "VCARD"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 716
    new-instance v30, Lorg/telegram/ui/LaunchActivity$VcardData;

    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V

    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v80

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_4
    :goto_3
    if-eqz v30, :cond_3

    .line 723
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "FN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "ORG"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 724
    :cond_5
    const/16 v47, 0x0

    .line 725
    .local v47, "nameEncoding":Ljava/lang/String;
    const/16 v46, 0x0

    .line 726
    .local v46, "nameCharset":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, ";"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v52

    .line 727
    .local v52, "params":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v15, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v15, :cond_b

    aget-object v51, v52, v4

    .line 728
    .local v51, "param":Ljava/lang/String;
    const-string/jumbo v16, "="

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 729
    .local v23, "args2":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 727
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 679
    .end local v22    # "args":[Ljava/lang/String;
    .end local v23    # "args2":[Ljava/lang/String;
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v34    # "dialogId":J
    .end local v40    # "error":Z
    .end local v44    # "line":Ljava/lang/String;
    .end local v46    # "nameCharset":Ljava/lang/String;
    .end local v47    # "nameEncoding":Ljava/lang/String;
    .end local v51    # "param":Ljava/lang/String;
    .end local v52    # "params":[Ljava/lang/String;
    .end local v65    # "showDialogsList":Z
    .end local v66    # "showLocations":Z
    .end local v67    # "showPlayer":Z
    .end local v68    # "stream":Ljava/io/InputStream;
    .end local v72    # "type":Ljava/lang/String;
    .end local v73    # "uri":Landroid/net/Uri;
    .end local v80    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_7
    const-wide/16 v34, 0x0

    goto/16 :goto_1

    .line 717
    .restart local v22    # "args":[Ljava/lang/String;
    .restart local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v29    # "cr":Landroid/content/ContentResolver;
    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v34    # "dialogId":J
    .restart local v40    # "error":Z
    .restart local v44    # "line":Ljava/lang/String;
    .restart local v65    # "showDialogsList":Z
    .restart local v66    # "showLocations":Z
    .restart local v67    # "showPlayer":Z
    .restart local v68    # "stream":Ljava/io/InputStream;
    .restart local v72    # "type":Ljava/lang/String;
    .restart local v73    # "uri":Landroid/net/Uri;
    .restart local v80    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_8
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "END"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const-string/jumbo v15, "VCARD"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 718
    const/16 v30, 0x0

    goto :goto_3

    .line 732
    .restart local v23    # "args2":[Ljava/lang/String;
    .restart local v46    # "nameCharset":Ljava/lang/String;
    .restart local v47    # "nameEncoding":Ljava/lang/String;
    .restart local v51    # "param":Ljava/lang/String;
    .restart local v52    # "params":[Ljava/lang/String;
    :cond_9
    const/16 v16, 0x0

    aget-object v16, v23, v16

    const-string/jumbo v17, "CHARSET"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 733
    const/16 v16, 0x1

    aget-object v46, v23, v16

    goto :goto_5

    .line 734
    :cond_a
    const/16 v16, 0x0

    aget-object v16, v23, v16

    const-string/jumbo v17, "ENCODING"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 735
    const/16 v16, 0x1

    aget-object v47, v23, v16

    goto :goto_5

    .line 738
    .end local v23    # "args2":[Ljava/lang/String;
    .end local v51    # "param":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x1

    aget-object v4, v22, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 739
    if-eqz v47, :cond_3

    const-string/jumbo v4, "QUOTED-PRINTABLE"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 740
    :goto_6
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const-string/jumbo v15, "="

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v47, :cond_c

    .line 741
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 742
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v44

    .line 743
    if-nez v44, :cond_14

    .line 748
    :cond_c
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v26

    .line 749
    .local v26, "bytes":[B
    if-eqz v26, :cond_3

    move-object/from16 v0, v26

    array-length v4, v0

    if-eqz v4, :cond_3

    .line 750
    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 751
    .local v33, "decodedName":Ljava/lang/String;
    if-eqz v33, :cond_3

    .line 752
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 790
    .end local v22    # "args":[Ljava/lang/String;
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v26    # "bytes":[B
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v33    # "decodedName":Ljava/lang/String;
    .end local v44    # "line":Ljava/lang/String;
    .end local v46    # "nameCharset":Ljava/lang/String;
    .end local v47    # "nameEncoding":Ljava/lang/String;
    .end local v52    # "params":[Ljava/lang/String;
    .end local v68    # "stream":Ljava/io/InputStream;
    .end local v73    # "uri":Landroid/net/Uri;
    .end local v80    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :catch_0
    move-exception v38

    .line 791
    .local v38, "e":Ljava/lang/Exception;
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 792
    const/16 v40, 0x1

    .line 860
    .end local v38    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_7
    if-eqz v40, :cond_e

    .line 861
    const-string/jumbo v4, "Unsupported content"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1138
    .end local v40    # "error":Z
    .end local v72    # "type":Ljava/lang/String;
    :cond_e
    :goto_8
    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 1139
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1140
    .local v22, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1142
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    :cond_f
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1144
    :cond_10
    new-instance v42, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1145
    .local v42, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1146
    const/16 v57, 0x1

    .line 1275
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v42    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_11
    :goto_9
    if-nez v57, :cond_13

    if-nez p2, :cond_13

    .line 1276
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 1277
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_88

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v15}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1303
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1304
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1305
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1310
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 746
    .local v22, "args":[Ljava/lang/String;
    .restart local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v29    # "cr":Landroid/content/ContentResolver;
    .restart local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v40    # "error":Z
    .restart local v44    # "line":Ljava/lang/String;
    .restart local v46    # "nameCharset":Ljava/lang/String;
    .restart local v47    # "nameEncoding":Ljava/lang/String;
    .restart local v52    # "params":[Ljava/lang/String;
    .restart local v68    # "stream":Ljava/io/InputStream;
    .restart local v72    # "type":Ljava/lang/String;
    .restart local v73    # "uri":Landroid/net/Uri;
    .restart local v80    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_14
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_6

    .line 756
    .end local v46    # "nameCharset":Ljava/lang/String;
    .end local v47    # "nameEncoding":Ljava/lang/String;
    .end local v52    # "params":[Ljava/lang/String;
    :cond_15
    const/4 v4, 0x0

    aget-object v4, v22, v4

    const-string/jumbo v15, "TEL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 757
    const/4 v4, 0x1

    aget-object v4, v22, v4

    const/4 v15, 0x1

    invoke-static {v4, v15}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v55

    .line 758
    .local v55, "phone":Ljava/lang/String;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 759
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 764
    .end local v22    # "args":[Ljava/lang/String;
    .end local v55    # "phone":Ljava/lang/String;
    :cond_16
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    .line 765
    invoke-virtual/range {v68 .. v68}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 769
    :goto_b
    const/16 v21, 0x0

    .local v21, "a":I
    :goto_c
    :try_start_3
    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_d

    .line 770
    move-object/from16 v0, v80

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Lorg/telegram/ui/LaunchActivity$VcardData;

    .line 771
    .local v79, "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v79

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    if-eqz v4, :cond_18

    move-object/from16 v0, v79

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    .line 773
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 776
    :cond_17
    const/16 v24, 0x0

    .local v24, "b":I
    :goto_d
    move-object/from16 v0, v79

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_18

    .line 777
    move-object/from16 v0, v79

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 778
    .restart local v55    # "phone":Ljava/lang/String;
    new-instance v76, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct/range {v76 .. v76}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 779
    .local v76, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v55

    move-object/from16 v1, v76

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 780
    move-object/from16 v0, v79

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v0, v76

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 781
    const-string/jumbo v4, ""

    move-object/from16 v0, v76

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 782
    const/4 v4, 0x0

    move-object/from16 v0, v76

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    move-object/from16 v0, v76

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 766
    .end local v21    # "a":I
    .end local v24    # "b":I
    .end local v55    # "phone":Ljava/lang/String;
    .end local v76    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v79    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :catch_1
    move-exception v38

    .line 767
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    .line 769
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v21    # "a":I
    .restart local v79    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 788
    .end local v21    # "a":I
    .end local v25    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v29    # "cr":Landroid/content/ContentResolver;
    .end local v30    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v44    # "line":Ljava/lang/String;
    .end local v68    # "stream":Ljava/io/InputStream;
    .end local v79    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v80    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_19
    const/16 v40, 0x1

    goto/16 :goto_7

    .line 795
    .end local v73    # "uri":Landroid/net/Uri;
    :cond_1a
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 796
    .local v70, "text":Ljava/lang/String;
    if-nez v70, :cond_1b

    .line 797
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v71

    .line 798
    .local v71, "textSequence":Ljava/lang/CharSequence;
    if-eqz v71, :cond_1b

    .line 799
    invoke-interface/range {v71 .. v71}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    .line 802
    .end local v71    # "textSequence":Ljava/lang/CharSequence;
    :cond_1b
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 804
    .local v69, "subject":Ljava/lang/String;
    if-eqz v70, :cond_24

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_24

    .line 805
    const-string/jumbo v4, "http://"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "https://"

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    if-eqz v69, :cond_1d

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    .line 808
    :cond_1d
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 813
    :cond_1e
    :goto_e
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v53

    .line 814
    .local v53, "parcelable":Landroid/os/Parcelable;
    if-eqz v53, :cond_2b

    .line 816
    move-object/from16 v0, v53

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_1f

    .line 817
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    :cond_1f
    move-object/from16 v73, v53

    .line 819
    check-cast v73, Landroid/net/Uri;

    .line 820
    .restart local v73    # "uri":Landroid/net/Uri;
    if-eqz v73, :cond_20

    .line 821
    invoke-static/range {v73 .. v73}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 822
    const/16 v40, 0x1

    .line 825
    :cond_20
    if-nez v40, :cond_d

    .line 826
    if-eqz v73, :cond_25

    if-eqz v72, :cond_21

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    :cond_21
    invoke-virtual/range {v73 .. v73}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 827
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_23

    .line 828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 830
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 809
    .end local v53    # "parcelable":Landroid/os/Parcelable;
    .end local v73    # "uri":Landroid/net/Uri;
    :cond_24
    if-eqz v69, :cond_1e

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 810
    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    goto :goto_e

    .line 832
    .restart local v53    # "parcelable":Landroid/os/Parcelable;
    .restart local v73    # "uri":Landroid/net/Uri;
    :cond_25
    invoke-static/range {v73 .. v73}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v54

    .line 833
    .local v54, "path":Ljava/lang/String;
    if-eqz v54, :cond_29

    .line 834
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 835
    const-string/jumbo v4, "file://"

    const-string/jumbo v15, ""

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v54

    .line 837
    :cond_26
    if-eqz v72, :cond_27

    const-string/jumbo v4, "video/"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 838
    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    goto/16 :goto_7

    .line 840
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_28

    .line 841
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 842
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 844
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    invoke-virtual/range {v73 .. v73}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 848
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_2a

    .line 849
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 851
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    goto/16 :goto_7

    .line 856
    .end local v54    # "path":Ljava/lang/String;
    .end local v73    # "uri":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_d

    .line 857
    const/16 v40, 0x1

    goto/16 :goto_7

    .line 863
    .end local v40    # "error":Z
    .end local v53    # "parcelable":Landroid/os/Parcelable;
    .end local v69    # "subject":Ljava/lang/String;
    .end local v70    # "text":Ljava/lang/String;
    .end local v72    # "type":Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 864
    const/16 v40, 0x0

    .line 866
    .restart local v40    # "error":Z
    :try_start_4
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v74

    .line 867
    .local v74, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v72

    .line 868
    .restart local v72    # "type":Ljava/lang/String;
    if-eqz v74, :cond_30

    .line 869
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_f
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2f

    .line 870
    move-object/from16 v0, v74

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/Parcelable;

    .line 871
    .restart local v53    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v53

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_2d

    .line 872
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    .line 874
    :cond_2d
    move-object/from16 v0, v53

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v73, v0

    .line 875
    .restart local v73    # "uri":Landroid/net/Uri;
    if-eqz v73, :cond_2e

    .line 876
    invoke-static/range {v73 .. v73}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 877
    move-object/from16 v0, v74

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 878
    add-int/lit8 v21, v21, -0x1

    .line 869
    :cond_2e
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 882
    .end local v53    # "parcelable":Landroid/os/Parcelable;
    .end local v73    # "uri":Landroid/net/Uri;
    :cond_2f
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 883
    const/16 v74, 0x0

    .line 886
    .end local v21    # "a":I
    :cond_30
    if-eqz v74, :cond_3b

    .line 887
    if-eqz v72, :cond_33

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 888
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_10
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3a

    .line 889
    move-object/from16 v0, v74

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/Parcelable;

    .line 890
    .restart local v53    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v53

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_31

    .line 891
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    .line 893
    :cond_31
    move-object/from16 v0, v53

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v73, v0

    .line 894
    .restart local v73    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_32

    .line 895
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 897
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 900
    .end local v21    # "a":I
    .end local v53    # "parcelable":Landroid/os/Parcelable;
    .end local v73    # "uri":Landroid/net/Uri;
    :cond_33
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_11
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3a

    .line 901
    move-object/from16 v0, v74

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/Parcelable;

    .line 902
    .restart local v53    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v53

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_34

    .line 903
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    .line 905
    :cond_34
    move-object/from16 v0, v53

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v73, v0

    .line 906
    .restart local v73    # "uri":Landroid/net/Uri;
    invoke-static/range {v73 .. v73}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v54

    .line 907
    .restart local v54    # "path":Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    .line 908
    .local v50, "originalPath":Ljava/lang/String;
    if-nez v50, :cond_35

    .line 909
    move-object/from16 v50, v54

    .line 911
    :cond_35
    if-eqz v54, :cond_38

    .line 912
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 913
    const-string/jumbo v4, "file://"

    const-string/jumbo v15, ""

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v54

    .line 915
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_37

    .line 916
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 917
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 919
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    :goto_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    .line 922
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_39

    .line 923
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 925
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_12

    .line 933
    .end local v21    # "a":I
    .end local v50    # "originalPath":Ljava/lang/String;
    .end local v53    # "parcelable":Landroid/os/Parcelable;
    .end local v54    # "path":Ljava/lang/String;
    .end local v72    # "type":Ljava/lang/String;
    .end local v73    # "uri":Landroid/net/Uri;
    .end local v74    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_2
    move-exception v38

    .line 934
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 935
    const/16 v40, 0x1

    .line 937
    .end local v38    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_13
    if-eqz v40, :cond_e

    .line 938
    const-string/jumbo v4, "Unsupported content"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 931
    .restart local v72    # "type":Ljava/lang/String;
    .restart local v74    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3b
    const/16 v40, 0x1

    goto :goto_13

    .line 940
    .end local v40    # "error":Z
    .end local v72    # "type":Ljava/lang/String;
    .end local v74    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3c
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 942
    .local v32, "data":Landroid/net/Uri;
    if-eqz v32, :cond_e

    .line 943
    const/4 v5, 0x0

    .line 944
    .local v5, "username":Ljava/lang/String;
    const/4 v6, 0x0

    .line 945
    .local v6, "group":Ljava/lang/String;
    const/4 v7, 0x0

    .line 946
    .local v7, "sticker":Ljava/lang/String;
    const/4 v14, 0x0

    .line 947
    .local v14, "instantView":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 948
    .local v8, "botUser":Ljava/lang/String;
    const/4 v9, 0x0

    .line 949
    .local v9, "botChat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 950
    .local v10, "message":Ljava/lang/String;
    const/16 v55, 0x0

    .line 951
    .restart local v55    # "phone":Ljava/lang/String;
    const/4 v13, 0x0

    .line 952
    .local v13, "game":Ljava/lang/String;
    const/16 v56, 0x0

    .line 953
    .local v56, "phoneHash":Ljava/lang/String;
    const/4 v12, 0x0

    .line 954
    .local v12, "messageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 955
    .local v11, "hasUrl":Z
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v63

    .line 956
    .local v63, "scheme":Ljava/lang/String;
    if-eqz v63, :cond_3f

    .line 957
    const-string/jumbo v4, "http"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string/jumbo v4, "https"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 958
    :cond_3d
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    .line 959
    .local v43, "host":Ljava/lang/String;
    const-string/jumbo v4, "telegram.me"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "t.me"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "telegram.dog"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "telesco.pe"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 960
    :cond_3e
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v54

    .line 961
    .restart local v54    # "path":Ljava/lang/String;
    if-eqz v54, :cond_3f

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_3f

    .line 962
    const/4 v4, 0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    .line 963
    const-string/jumbo v4, "joinchat/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 964
    const-string/jumbo v4, "joinchat/"

    const-string/jumbo v15, ""

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1079
    .end local v43    # "host":Ljava/lang/String;
    .end local v54    # "path":Ljava/lang/String;
    :cond_3f
    :goto_14
    if-eqz v10, :cond_40

    const-string/jumbo v4, "@"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1080
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1082
    :cond_40
    if-nez v55, :cond_41

    if-eqz v56, :cond_60

    .line 1083
    :cond_41
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1084
    .local v22, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v22

    move-object/from16 v1, v56

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v4, Lorg/telegram/ui/LaunchActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/LaunchActivity$7;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 965
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v43    # "host":Ljava/lang/String;
    .restart local v54    # "path":Ljava/lang/String;
    :cond_42
    const-string/jumbo v4, "addstickers/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 966
    const-string/jumbo v4, "addstickers/"

    const-string/jumbo v15, ""

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    .line 967
    :cond_43
    const-string/jumbo v4, "iv/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 968
    const/4 v4, 0x0

    const-string/jumbo v15, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 969
    const/4 v4, 0x1

    const-string/jumbo v15, "rhash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 970
    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 971
    :cond_44
    const/4 v14, 0x0

    goto/16 :goto_14

    .line 973
    :cond_45
    const-string/jumbo v4, "msg/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "share/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 974
    :cond_46
    const-string/jumbo v4, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 975
    if-nez v10, :cond_47

    .line 976
    const-string/jumbo v10, ""

    .line 978
    :cond_47
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 979
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 980
    const/4 v11, 0x1

    .line 981
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 983
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 985
    :cond_49
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x4000

    if-le v4, v15, :cond_4a

    .line 986
    const/4 v4, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 988
    :cond_4a
    :goto_15
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 989
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    .line 991
    :cond_4b
    const-string/jumbo v4, "confirmphone"

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 992
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 993
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_14

    .line 994
    :cond_4c
    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x1

    if-lt v4, v15, :cond_3f

    .line 995
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v64

    .line 996
    .local v64, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 997
    const/4 v4, 0x0

    move-object/from16 v0, v64

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "username":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 998
    .restart local v5    # "username":Ljava/lang/String;
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_4d

    .line 999
    const/4 v4, 0x1

    move-object/from16 v0, v64

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1000
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4d

    .line 1001
    const/4 v12, 0x0

    .line 1005
    :cond_4d
    const-string/jumbo v4, "start"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1006
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1007
    const-string/jumbo v4, "game"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_14

    .line 1011
    .end local v43    # "host":Ljava/lang/String;
    .end local v54    # "path":Ljava/lang/String;
    .end local v64    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4e
    const-string/jumbo v4, "tg"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1012
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v75

    .line 1013
    .local v75, "url":Ljava/lang/String;
    const-string/jumbo v4, "tg:resolve"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string/jumbo v4, "tg://resolve"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1014
    :cond_4f
    const-string/jumbo v4, "tg:resolve"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://resolve"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v75

    .line 1015
    invoke-static/range {v75 .. v75}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1016
    const-string/jumbo v4, "domain"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    const-string/jumbo v4, "start"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1018
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1019
    const-string/jumbo v4, "game"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1020
    const-string/jumbo v4, "post"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1021
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3f

    .line 1022
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 1024
    :cond_50
    const-string/jumbo v4, "tg:join"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "tg://join"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1025
    :cond_51
    const-string/jumbo v4, "tg:join"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://join"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v75

    .line 1026
    invoke-static/range {v75 .. v75}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1027
    const-string/jumbo v4, "invite"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 1028
    :cond_52
    const-string/jumbo v4, "tg:addstickers"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string/jumbo v4, "tg://addstickers"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1029
    :cond_53
    const-string/jumbo v4, "tg:addstickers"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://addstickers"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v75

    .line 1030
    invoke-static/range {v75 .. v75}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1031
    const-string/jumbo v4, "set"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_14

    .line 1032
    :cond_54
    const-string/jumbo v4, "tg:msg"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg://msg"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg://share"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "tg:share"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1033
    :cond_55
    const-string/jumbo v4, "tg:msg"

    const-string/jumbo v15, "tg://telegram.org"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://msg"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg://share"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "tg:share"

    const-string/jumbo v16, "tg://telegram.org"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v75

    .line 1034
    invoke-static/range {v75 .. v75}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1035
    const-string/jumbo v4, "url"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1036
    if-nez v10, :cond_56

    .line 1037
    const-string/jumbo v10, ""

    .line 1039
    :cond_56
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1040
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 1041
    const/4 v11, 0x1

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1044
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1046
    :cond_58
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x4000

    if-le v4, v15, :cond_59

    .line 1047
    const/4 v4, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1049
    :cond_59
    :goto_16
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1050
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_16

    .line 1052
    :cond_5a
    const-string/jumbo v4, "tg:confirmphone"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string/jumbo v4, "tg://confirmphone"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1053
    :cond_5b
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1054
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_14

    .line 1055
    :cond_5c
    const-string/jumbo v4, "tg:openmessage"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string/jumbo v4, "tg://openmessage"

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1056
    :cond_5d
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 1057
    .local v77, "userID":Ljava/lang/String;
    const-string/jumbo v4, "chat_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1058
    .local v27, "chatID":Ljava/lang/String;
    const-string/jumbo v4, "message_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1059
    .local v45, "msgID":Ljava/lang/String;
    if-eqz v77, :cond_5f

    .line 1061
    :try_start_5
    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v61

    .line 1070
    :cond_5e
    :goto_17
    if-eqz v45, :cond_3f

    .line 1072
    :try_start_6
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v60

    goto/16 :goto_14

    .line 1064
    :cond_5f
    if-eqz v27, :cond_5e

    .line 1066
    :try_start_7
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v58

    goto :goto_17

    .line 1092
    .end local v27    # "chatID":Ljava/lang/String;
    .end local v45    # "msgID":Ljava/lang/String;
    .end local v75    # "url":Ljava/lang/String;
    .end local v77    # "userID":Ljava/lang/String;
    :cond_60
    if-nez v5, :cond_61

    if-nez v6, :cond_61

    if-nez v7, :cond_61

    if-nez v10, :cond_61

    if-nez v13, :cond_61

    if-eqz v14, :cond_62

    .line 1093
    :cond_61
    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v15}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1096
    :cond_62
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1097
    .local v31, "cursor":Landroid/database/Cursor;
    if-eqz v31, :cond_e

    .line 1098
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1099
    const-string/jumbo v4, "DATA4"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v78

    .line 1100
    .local v78, "userId":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1101
    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    .line 1103
    .end local v78    # "userId":I
    :cond_63
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_8

    .line 1105
    .end local v31    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v38

    .line 1106
    .restart local v38    # "e":Ljava/lang/Exception;
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1110
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "sticker":Ljava/lang/String;
    .end local v8    # "botUser":Ljava/lang/String;
    .end local v9    # "botChat":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "hasUrl":Z
    .end local v12    # "messageId":Ljava/lang/Integer;
    .end local v13    # "game":Ljava/lang/String;
    .end local v14    # "instantView":[Ljava/lang/String;
    .end local v32    # "data":Landroid/net/Uri;
    .end local v38    # "e":Ljava/lang/Exception;
    .end local v55    # "phone":Ljava/lang/String;
    .end local v56    # "phoneHash":Ljava/lang/String;
    .end local v63    # "scheme":Ljava/lang/String;
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "org.telegram.messenger.OPEN_ACCOUNT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1111
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    goto/16 :goto_8

    .line 1112
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "new_dialog"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1113
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    goto/16 :goto_8

    .line 1114
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "com.tmessages.openchat"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1115
    const-string/jumbo v4, "chatId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1116
    .local v28, "chatId":I
    const-string/jumbo v4, "userId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v78

    .line 1117
    .restart local v78    # "userId":I
    const-string/jumbo v4, "encId"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    .line 1118
    .local v39, "encId":I
    if-eqz v28, :cond_67

    .line 1119
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1120
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    goto/16 :goto_8

    .line 1121
    :cond_67
    if-eqz v78, :cond_68

    .line 1122
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1123
    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    goto/16 :goto_8

    .line 1124
    :cond_68
    if-eqz v39, :cond_69

    .line 1125
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1126
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    goto/16 :goto_8

    .line 1128
    :cond_69
    const/16 v65, 0x1

    goto/16 :goto_8

    .line 1130
    .end local v28    # "chatId":I
    .end local v39    # "encId":I
    .end local v78    # "userId":I
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "com.tmessages.openplayer"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1131
    const/16 v67, 0x1

    goto/16 :goto_8

    .line 1132
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "org.tmessages.openlocations"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1133
    const/16 v66, 0x1

    goto/16 :goto_8

    .line 1149
    :cond_6c
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 1150
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1151
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1152
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 1153
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1154
    :cond_6d
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1155
    :cond_6e
    new-instance v42, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1156
    .restart local v42    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1157
    const/16 v57, 0x1

    goto/16 :goto_9

    .line 1160
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v42    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_6f
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_70

    .line 1161
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "enc_id"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1163
    new-instance v42, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1164
    .restart local v42    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v4, v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1165
    const/16 v57, 0x1

    goto/16 :goto_9

    .line 1167
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v42    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_70
    if-eqz v65, :cond_74

    .line 1168
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_72

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1179
    :cond_71
    :goto_18
    const/16 v57, 0x0

    .line 1180
    const/16 p2, 0x0

    goto/16 :goto_9

    .line 1171
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 1172
    const/16 v21, 0x0

    .restart local v21    # "a":I
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_73

    .line 1173
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1174
    add-int/lit8 v21, v21, -0x1

    .line 1172
    add-int/lit8 v21, v21, 0x1

    goto :goto_19

    .line 1176
    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_18

    .line 1181
    .end local v21    # "a":I
    :cond_74
    if-eqz v67, :cond_76

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_75

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1184
    .local v42, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1186
    .end local v42    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_75
    const/16 v57, 0x0

    goto/16 :goto_9

    .line 1187
    :cond_76
    if-eqz v66, :cond_78

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_77

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1190
    .restart local v42    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v4, Lorg/telegram/ui/Components/SharingLocationsAlert;

    new-instance v15, Lorg/telegram/ui/LaunchActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/LaunchActivity$8;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1206
    .end local v42    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_77
    const/16 v57, 0x0

    goto/16 :goto_9

    .line 1207
    :cond_78
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-nez v4, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_84

    .line 1208
    :cond_79
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v15, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1211
    :cond_7a
    const-wide/16 v16, 0x0

    cmp-long v4, v34, v16

    if-nez v4, :cond_83

    .line 1212
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1213
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v15, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v4, :cond_7c

    .line 1215
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v15, "SendContactTo"

    const v16, 0x7f070566

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v15, "SendContactToGroup"

    const v16, 0x7f070559

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_1a
    new-instance v42, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1222
    .local v42, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1224
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v15, v15, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_7d

    const/16 v62, 0x1

    .line 1229
    .local v62, "removeLast":Z
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v62

    move/from16 v2, v16

    invoke-virtual {v4, v0, v1, v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1230
    const/16 v57, 0x1

    .line 1231
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1232
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 1239
    :cond_7b
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1240
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto/16 :goto_9

    .line 1218
    .end local v42    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v62    # "removeLast":Z
    :cond_7c
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v15, "SendMessagesTo"

    const v16, 0x7f070566

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v15, "SendMessagesToGroup"

    const v16, 0x7f070567

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1225
    .restart local v42    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_7d
    const/16 v62, 0x0

    goto :goto_1b

    .line 1227
    :cond_7e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x1

    if-le v4, v15, :cond_7f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v15, v15, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_7f

    const/16 v62, 0x1

    .restart local v62    # "removeLast":Z
    :goto_1d
    goto/16 :goto_1b

    .end local v62    # "removeLast":Z
    :cond_7f
    const/16 v62, 0x0

    goto :goto_1d

    .line 1233
    .restart local v62    # "removeLast":Z
    :cond_80
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1234
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_1c

    .line 1235
    :cond_81
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1236
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_1c

    .line 1244
    :cond_82
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_9

    .line 1247
    .end local v22    # "args":Landroid/os/Bundle;
    .end local v42    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v62    # "removeLast":Z
    :cond_83
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .local v37, "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v16

    invoke-virtual {v0, v4, v1, v15, v2}, Lorg/telegram/ui/LaunchActivity;->didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_9

    .line 1251
    .end local v37    # "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_84
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_86

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v15}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1253
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1254
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1260
    :goto_1e
    const/16 v57, 0x1

    goto/16 :goto_9

    .line 1258
    :cond_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1e

    .line 1261
    :cond_86
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_11

    .line 1262
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .restart local v22    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "destroyAfterSelect"

    const/4 v15, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1265
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1272
    :goto_1f
    const/16 v57, 0x1

    goto/16 :goto_9

    .line 1270
    :cond_87
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1f

    .line 1283
    .end local v22    # "args":Landroid/os/Bundle;
    :cond_88
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1284
    new-instance v36, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1285
    .local v36, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1291
    .end local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_89
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1292
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v15, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v15}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1294
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1296
    :cond_8a
    new-instance v36, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1297
    .restart local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1073
    .end local v36    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v5    # "username":Ljava/lang/String;
    .restart local v6    # "group":Ljava/lang/String;
    .restart local v7    # "sticker":Ljava/lang/String;
    .restart local v8    # "botUser":Ljava/lang/String;
    .restart local v9    # "botChat":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "hasUrl":Z
    .restart local v12    # "messageId":Ljava/lang/Integer;
    .restart local v13    # "game":Ljava/lang/String;
    .restart local v14    # "instantView":[Ljava/lang/String;
    .restart local v27    # "chatID":Ljava/lang/String;
    .restart local v32    # "data":Landroid/net/Uri;
    .restart local v45    # "msgID":Ljava/lang/String;
    .restart local v55    # "phone":Ljava/lang/String;
    .restart local v56    # "phoneHash":Ljava/lang/String;
    .restart local v63    # "scheme":Ljava/lang/String;
    .restart local v75    # "url":Ljava/lang/String;
    .restart local v77    # "userID":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto/16 :goto_14

    .line 1067
    :catch_5
    move-exception v4

    goto/16 :goto_17

    .line 1062
    :catch_6
    move-exception v4

    goto/16 :goto_17
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 1770
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1773
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1776
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1778
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1779
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1780
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1781
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1782
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1783
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1784
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1785
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1786
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1787
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1788
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1789
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPasscodePause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 2440
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2442
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2444
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2445
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2446
    new-instance v0, Lorg/telegram/ui/LaunchActivity$29;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$29;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2460
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_2

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2468
    :cond_1
    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2469
    return-void

    .line 2462
    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v0, :cond_1

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 2466
    :cond_3
    sput v6, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    goto :goto_0
.end method

.method private onPasscodeResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2474
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2476
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2477
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 2479
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    .line 2480
    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2481
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2483
    :cond_2
    return-void
.end method

.method private runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 21
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "sticker"    # Ljava/lang/String;
    .param p4, "botUser"    # Ljava/lang/String;
    .param p5, "botChat"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "hasUrl"    # Z
    .param p8, "messageId"    # Ljava/lang/Integer;
    .param p9, "game"    # Ljava/lang/String;
    .param p10, "instantView"    # [Ljava/lang/String;
    .param p11, "state"    # I

    .prologue
    .line 1317
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1318
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f07035a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1319
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1320
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 1321
    const/16 v19, 0x0

    .line 1323
    .local v19, "requestId":I
    if-eqz p1, :cond_2

    .line 1324
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1325
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1326
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v3, Lorg/telegram/ui/LaunchActivity$9;

    move-object/from16 v4, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/LaunchActivity$9;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v19

    .line 1642
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    .line 1643
    move/from16 v18, v19

    .line 1644
    .local v18, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v6, 0x7f0700f4

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/LaunchActivity$13;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LaunchActivity$13;-><init>(Lorg/telegram/ui/LaunchActivity;I)V

    invoke-virtual {v5, v3, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1656
    :try_start_0
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    .end local v18    # "reqId":I
    :cond_1
    :goto_1
    return-void

    .line 1476
    :cond_2
    if-eqz p2, :cond_4

    .line 1477
    if-nez p11, :cond_3

    .line 1478
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 1479
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 1480
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v3, Lorg/telegram/ui/LaunchActivity$10;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v3 .. v15}, Lorg/telegram/ui/LaunchActivity$10;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v19

    .line 1540
    goto :goto_0

    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p11

    if-ne v0, v3, :cond_0

    .line 1541
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 1542
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 1543
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/LaunchActivity$11;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1596
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    :cond_4
    if-eqz p3, :cond_5

    .line 1597
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1598
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 1599
    .local v9, "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    move-object/from16 v0, p3

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;->short_name:Ljava/lang/String;

    .line 1600
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1601
    .local v8, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1604
    .end local v8    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v9    # "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    :cond_5
    if-eqz p6, :cond_6

    .line 1605
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1606
    .local v16, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "onlySelect"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1607
    new-instance v8, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1608
    .local v8, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v3, Lorg/telegram/ui/LaunchActivity$12;

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$12;-><init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1637
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_0

    .line 1638
    .end local v8    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v16    # "args":Landroid/os/Bundle;
    :cond_6
    if-eqz p10, :cond_0

    goto/16 :goto_0

    .line 1657
    .restart local v18    # "reqId":I
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private showLanguageAlert(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    .line 2343
    :try_start_0
    iget-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    if-eqz v9, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2346
    :cond_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2347
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "language_showed2"

    const-string/jumbo v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2348
    .local v7, "showedLang":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2349
    .local v8, "systemLang":Ljava/lang/String;
    if-nez p1, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2350
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "alert already showed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2434
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "showedLang":Ljava/lang/String;
    .end local v8    # "systemLang":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2435
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2354
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    .restart local v7    # "showedLang":Ljava/lang/String;
    .restart local v8    # "systemLang":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x2

    :try_start_1
    new-array v4, v9, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2355
    .local v4, "infos":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v9, v10

    .line 2356
    .local v1, "arg":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_6

    .line 2357
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2358
    .local v3, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "en"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2359
    const/4 v9, 0x0

    aput-object v3, v4, v9

    .line 2361
    :cond_3
    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2362
    :cond_4
    const/4 v9, 0x1

    aput-object v3, v4, v9

    .line 2364
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_8

    .line 2368
    .end local v3    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    if-eq v9, v10, :cond_0

    .line 2371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "show lang alert for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v10}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2373
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    .line 2374
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    .line 2375
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    .line 2377
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;-><init>()V

    .line 2378
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 2379
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "English"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguage"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguageOther"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChangeLanguageLater"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/LaunchActivity$27;

    invoke-direct {v10, p0, v4, v8}, Lorg/telegram/ui/LaunchActivity$27;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2406
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;

    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;-><init>()V

    .line 2407
    .restart local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 2408
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "English"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguage"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChooseYourLanguageOther"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ChangeLanguageLater"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/LaunchActivity$28;

    invoke-direct {v10, p0, v4, v8}, Lorg/telegram/ui/LaunchActivity$28;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v0    # "a":I
    .end local v1    # "arg":Ljava/lang/String;
    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    :cond_7
    move-object v1, v8

    .line 2355
    goto/16 :goto_1

    .line 2356
    .restart local v0    # "a":I
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v3    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    .locals 16
    .param p1, "systemInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "englishInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p3, "systemLang"    # Ljava/lang/String;

    .prologue
    .line 2277
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/LaunchActivity;->loadingLocaleDialog:Z

    .line 2278
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    if-nez v12, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/LocaleController;->isCurrentLocalLocale()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 2279
    .local v7, "firstSystem":Z
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2280
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguage"

    const v14, 0x7f07016e

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2281
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguage"

    const v14, 0x7f07016e

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2282
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2283
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2284
    const/4 v12, 0x2

    new-array v4, v12, [Lorg/telegram/ui/Cells/LanguageCell;

    .line 2285
    .local v4, "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    const/4 v12, 0x1

    new-array v11, v12, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2286
    .local v11, "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v12, 0x2

    new-array v9, v12, [Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2287
    .local v9, "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "English"

    const v14, 0x7f070220

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2288
    .local v6, "englishName":Ljava/lang/String;
    const/4 v13, 0x0

    if-eqz v7, :cond_2

    move-object/from16 v12, p1

    :goto_1
    aput-object v12, v9, v13

    .line 2289
    const/4 v13, 0x1

    if-eqz v7, :cond_3

    move-object/from16 v12, p2

    :goto_2
    aput-object v12, v9, v13

    .line 2290
    const/4 v12, 0x0

    if-eqz v7, :cond_4

    .end local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :goto_3
    aput-object p1, v11, v12

    .line 2292
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_4
    const/4 v12, 0x2

    if-ge v1, v12, :cond_7

    .line 2293
    new-instance v12, Lorg/telegram/ui/Cells/LanguageCell;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;Z)V

    aput-object v12, v4, v1

    .line 2294
    aget-object v13, v4, v1

    aget-object v14, v9, v1

    aget-object v12, v9, v1

    move-object/from16 v0, p2

    if-ne v12, v0, :cond_5

    move-object v12, v6

    :goto_5
    const/4 v15, 0x1

    invoke-virtual {v13, v14, v12, v15}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;Z)V

    .line 2295
    aget-object v12, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setTag(Ljava/lang/Object;)V

    .line 2296
    aget-object v12, v4, v1

    const-string/jumbo v13, "dialogButtonSelector"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2297
    aget-object v13, v4, v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v13, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguageSelected(Z)V

    .line 2298
    aget-object v12, v4, v1

    const/4 v13, -0x1

    const/16 v14, 0x30

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2299
    aget-object v12, v4, v1

    new-instance v13, Lorg/telegram/ui/LaunchActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v4}, Lorg/telegram/ui/LaunchActivity$24;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;[Lorg/telegram/ui/Cells/LanguageCell;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2292
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2278
    .end local v1    # "a":I
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .end local v6    # "englishName":Ljava/lang/String;
    .end local v7    # "firstSystem":Z
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .restart local v6    # "englishName":Ljava/lang/String;
    .restart local v7    # "firstSystem":Z
    .restart local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    move-object/from16 v12, p2

    .line 2288
    goto :goto_1

    :cond_3
    move-object/from16 v12, p1

    .line 2289
    goto :goto_2

    :cond_4
    move-object/from16 p1, p2

    .line 2290
    goto :goto_3

    .line 2294
    .end local p1    # "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v1    # "a":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 2297
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 2310
    :cond_7
    new-instance v3, Lorg/telegram/ui/Cells/LanguageCell;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;Z)V

    .line 2311
    .local v3, "cell":Lorg/telegram/ui/Cells/LanguageCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v13, "ChooseYourLanguageOther"

    const v14, 0x7f07016f

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;

    const-string/jumbo v14, "ChooseYourLanguageOther"

    const v15, 0x7f07016f

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getStringForLanguageAlert(Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/Cells/LanguageCell;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    new-instance v12, Lorg/telegram/ui/LaunchActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/LaunchActivity$25;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2324
    const/4 v12, -0x1

    const/16 v13, 0x30

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2326
    const-string/jumbo v12, "OK"

    const v13, 0x7f070440

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/LaunchActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lorg/telegram/ui/LaunchActivity$26;-><init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v2, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2333
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2334
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2335
    .local v10, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string/jumbo v13, "language_showed2"

    move-object/from16 v0, p3

    invoke-interface {v12, v13, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    .end local v1    # "a":I
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v3    # "cell":Lorg/telegram/ui/Cells/LanguageCell;
    .end local v4    # "cells":[Lorg/telegram/ui/Cells/LanguageCell;
    .end local v6    # "englishName":Ljava/lang/String;
    .end local v7    # "firstSystem":Z
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "locales":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "selectedLanguage":[Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :goto_7
    return-void

    .line 2336
    :catch_0
    move-exception v5

    .line 2337
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private showPasscodeActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 625
    :cond_0
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 626
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 633
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onShow()V

    .line 634
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$6;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_0

    .line 628
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_1

    .line 630
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_1
.end method

.method private updateCurrentConnectionState()V
    .locals 5

    .prologue
    .line 2486
    const/4 v2, 0x0

    .line 2487
    .local v2, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2488
    .local v1, "subtitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2489
    .local v0, "action":Ljava/lang/Runnable;
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2490
    const-string/jumbo v3, "WaitingForNetwork"

    const v4, 0x7f070655

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2539
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2540
    return-void

    .line 2491
    :cond_1
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2492
    const-string/jumbo v3, "Connecting"

    const v4, 0x7f07018a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2493
    new-instance v0, Lorg/telegram/ui/LaunchActivity$30;

    .end local v0    # "action":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$30;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .restart local v0    # "action":Ljava/lang/Runnable;
    goto :goto_0

    .line 2508
    :cond_2
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2509
    const-string/jumbo v3, "Updating"

    const v4, 0x7f0705fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2510
    :cond_3
    iget v3, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2511
    const-string/jumbo v3, "ConnectingToProxy"

    const v4, 0x7f07018b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2512
    const-string/jumbo v3, "ConnectingToProxyTapToDisable"

    const v4, 0x7f07018f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2513
    new-instance v0, Lorg/telegram/ui/LaunchActivity$31;

    .end local v0    # "action":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$31;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .restart local v0    # "action":Ljava/lang/Runnable;
    goto :goto_0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2061
    sget v14, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2062
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    if-eqz v14, :cond_0

    .line 2063
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v14}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2065
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2066
    .local v7, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_0

    .line 2068
    .end local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2069
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2070
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2071
    .restart local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_1

    .line 2073
    .end local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2074
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2075
    .restart local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_2

    .line 2077
    .end local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2079
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2080
    .local v8, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 2081
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2220
    .end local v8    # "intent2":Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 2083
    :cond_6
    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_7

    .line 2084
    const/4 v14, 0x0

    aget-object v14, p2, v14

    move-object/from16 v0, p0

    if-eq v14, v0, :cond_5

    .line 2085
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_3

    .line 2088
    :cond_7
    sget v14, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_8

    .line 2089
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v11

    .line 2090
    .local v11, "state":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    if-eq v14, v11, :cond_5

    .line 2091
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "switch to state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 2093
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    goto :goto_3

    .line 2095
    .end local v11    # "state":I
    :cond_8
    sget v14, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 2096
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v14}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 2097
    :cond_9
    sget v14, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_e

    .line 2098
    const/4 v14, 0x0

    aget-object v9, p2, v14

    check-cast v9, Ljava/lang/Integer;

    .line 2099
    .local v9, "reason":Ljava/lang/Integer;
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2100
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v14, "AppName"

    const v15, 0x7f07007a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2101
    const-string/jumbo v14, "OK"

    const v15, 0x7f070440

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2102
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_a

    .line 2103
    const-string/jumbo v14, "MoreInfo"

    const v15, 0x7f0703b0

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/LaunchActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/LaunchActivity$18;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2112
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_c

    .line 2113
    const-string/jumbo v14, "NobodyLikesSpam1"

    const v15, 0x7f0703eb

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2119
    :cond_b
    :goto_4
    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 2120
    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2114
    :cond_c
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    .line 2115
    const-string/jumbo v14, "NobodyLikesSpam2"

    const v15, 0x7f0703ec

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2116
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 2117
    const/4 v14, 0x1

    aget-object v14, p2, v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2122
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v9    # "reason":Ljava/lang/Integer;
    :cond_e
    sget v14, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_f

    .line 2123
    const/4 v14, 0x0

    aget-object v13, p2, v14

    check-cast v13, Ljava/util/HashMap;

    .line 2124
    .local v13, "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2125
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v14, "AppName"

    const v15, 0x7f07007a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2126
    const-string/jumbo v14, "OK"

    const v15, 0x7f070440

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2127
    const-string/jumbo v14, "ShareYouLocationUnableManually"

    const v15, 0x7f070592

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/LaunchActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13}, Lorg/telegram/ui/LaunchActivity$19;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2150
    const-string/jumbo v14, "ShareYouLocationUnable"

    const v15, 0x7f070591

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2151
    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 2152
    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v15, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2154
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_f
    sget v14, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_10

    .line 2155
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_5

    .line 2156
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2157
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2158
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 2161
    .end local v2    # "child":Landroid/view/View;
    :cond_10
    sget v14, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_12

    .line 2162
    sget-object v14, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_11

    sget-boolean v14, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v14, :cond_11

    .line 2164
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x2000

    const/16 v16, 0x2000

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2165
    :catch_0
    move-exception v5

    .line 2166
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2170
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x2000

    invoke-virtual {v14, v15}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2171
    :catch_1
    move-exception v5

    .line 2172
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2175
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    sget v14, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_13

    .line 2176
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/LaunchActivity;->rebuildAllFragments(Z)V

    goto/16 :goto_3

    .line 2177
    :cond_13
    sget v14, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_14

    .line 2178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    goto/16 :goto_3

    .line 2179
    :cond_14
    sget v14, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_15

    .line 2180
    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 2183
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v15

    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v16, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v14}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2184
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v16

    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    const/4 v15, 0x1

    aget-object v15, p2, v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/tgnet/TLRPC$TL_webPage;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 2185
    :cond_15
    sget v14, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 2186
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 2189
    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2190
    .local v12, "type":I
    const/4 v14, 0x1

    aget-object v3, p2, v14

    check-cast v3, Ljava/util/HashMap;

    .line 2191
    .local v3, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    const/4 v14, 0x2

    aget-object v14, p2, v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2192
    .local v6, "first":Z
    const/4 v14, 0x3

    aget-object v14, p2, v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 2193
    .local v10, "schedule":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v15, v15, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2195
    .restart local v7    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2196
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v14, "UpdateContactsTitle"

    const v15, 0x7f0705f6

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2197
    const-string/jumbo v14, "UpdateContactsMessage"

    const v15, 0x7f0705f5

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2198
    const-string/jumbo v14, "OK"

    const v15, 0x7f070440

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/LaunchActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3, v6, v10}, Lorg/telegram/ui/LaunchActivity$20;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;ZZ)V

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2204
    const-string/jumbo v14, "Cancel"

    const v15, 0x7f0700f4

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/LaunchActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3, v6, v10}, Lorg/telegram/ui/LaunchActivity$21;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;ZZ)V

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2210
    new-instance v14, Lorg/telegram/ui/LaunchActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v6, v10}, Lorg/telegram/ui/LaunchActivity$22;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;ZZ)V

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnBackButtonListener(Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2216
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    .line 2217
    .local v4, "dialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2218
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_3
.end method

.method public didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;Z)V
    .locals 20
    .param p1, "dialogsFragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "param"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DialogsActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p2, "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1706
    .local v4, "did":J
    long-to-int v0, v4

    move/from16 v19, v0

    .line 1707
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, v4, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 1709
    .local v18, "high_id":I
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1710
    .local v16, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1711
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1714
    :cond_0
    if-eqz v19, :cond_4

    .line 1715
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 1716
    const-string/jumbo v2, "chat_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    :cond_1
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1767
    :goto_1
    return-void

    .line 1718
    :cond_2
    if-lez v19, :cond_3

    .line 1719
    const-string/jumbo v2, "user_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1720
    :cond_3
    if-gez v19, :cond_1

    .line 1721
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1725
    :cond_4
    const-string/jumbo v2, "enc_id"

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1730
    :cond_5
    new-instance v17, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1732
    .local v17, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    if-nez p1, :cond_d

    const/4 v2, 0x1

    :goto_3
    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1734
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1738
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 1739
    const/4 v7, 0x0

    .line 1740
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1741
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1745
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ZLjava/util/ArrayList;)V

    .line 1748
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingText(Ljava/lang/String;J)V

    .line 1752
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 1753
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v12, v4

    invoke-static/range {v8 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1755
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1757
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v10, v4

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_4

    .line 1732
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1761
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1762
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 1763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public getActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getRightActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 7
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2815
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2816
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2817
    instance-of v2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 2818
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2819
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2820
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2821
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2822
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2823
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2824
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2825
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_0

    .line 2826
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2827
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2828
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2874
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v4

    .line 2816
    goto :goto_0

    .line 2833
    :cond_2
    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_6

    .line 2834
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_4

    .line 2835
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2836
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2837
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2838
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2839
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2840
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3

    .line 2841
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2842
    add-int/lit8 v0, v0, -0x1

    .line 2840
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2844
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_1

    .line 2847
    .end local v0    # "a":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2848
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2849
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2850
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_5

    .line 2851
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2852
    add-int/lit8 v0, v0, -0x1

    .line 2850
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2854
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    .line 2858
    .end local v0    # "a":I
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2859
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2860
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2861
    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v2, :cond_7

    .line 2862
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2863
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2864
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2868
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 2866
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_4

    :cond_8
    move v4, v3

    .line 2871
    goto/16 :goto_1

    .line 2873
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_a

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v4, v3

    .line 2874
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 2873
    goto :goto_5
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 4
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2880
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2881
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 2882
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2883
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2904
    :goto_0
    return v0

    .line 2885
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2

    .line 2886
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_1

    .line 2887
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 2904
    goto :goto_0

    .line 2889
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2890
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2891
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 2895
    :cond_3
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 2896
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2897
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 2900
    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    .line 2901
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 8
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2723
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2724
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 2726
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2727
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_2

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2728
    instance-of v3, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 2729
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2730
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_3

    .line 2731
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2732
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2733
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2734
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2735
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2736
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_1

    .line 2737
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2738
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2739
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2809
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v3, v5

    .line 2727
    goto :goto_0

    .line 2745
    :cond_3
    instance-of v3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_18

    .line 2746
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_c

    .line 2747
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_7

    :cond_6
    move v2, v4

    .line 2748
    .local v2, "result":Z
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2749
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_8

    .line 2750
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2751
    add-int/lit8 v0, v0, -0x1

    .line 2749
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_7
    move v2, v5

    .line 2747
    goto :goto_2

    .line 2753
    .restart local v0    # "a":I
    .restart local v2    # "result":Z
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_b

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2755
    .end local v0    # "a":I
    :cond_9
    if-nez v2, :cond_a

    .line 2756
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, v5, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_a
    move v5, v2

    .line 2758
    goto :goto_1

    .restart local v0    # "a":I
    :cond_b
    move v4, v5

    .line 2753
    goto :goto_4

    .line 2759
    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_c
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_f

    .line 2760
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2761
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2763
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2764
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2765
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_d

    .line 2766
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2767
    add-int/lit8 v0, v0, -0x1

    .line 2765
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2769
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_e

    :goto_6
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto :goto_6

    .line 2772
    .end local v0    # "a":I
    :cond_f
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_13

    .line 2773
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_10

    move v3, v4

    :goto_7
    invoke-virtual {v6, p1, v3, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2774
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2775
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_11

    .line 2776
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2777
    add-int/lit8 v0, v0, -0x1

    .line 2775
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "a":I
    :cond_10
    move v3, v5

    .line 2773
    goto :goto_7

    .line 2779
    .restart local v0    # "a":I
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_12

    :goto_9
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_12
    move v4, v5

    goto :goto_9

    .line 2783
    .end local v0    # "a":I
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2784
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_14

    .line 2785
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2786
    add-int/lit8 v0, v0, -0x1

    .line 2784
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2788
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_16

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2790
    .end local v0    # "a":I
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_17

    :goto_c
    invoke-virtual {v3, p1, v4, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .restart local v0    # "a":I
    :cond_16
    move v3, v5

    .line 2788
    goto :goto_b

    .end local v0    # "a":I
    :cond_17
    move v4, v5

    .line 2790
    goto :goto_c

    .line 2793
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_1a

    .line 2794
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2795
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2796
    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v3, :cond_19

    .line 2797
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2798
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2799
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2803
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .line 2801
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v4, 0x7f000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_d

    :cond_1a
    move v5, v4

    .line 2806
    goto/16 :goto_1

    .line 2808
    :cond_1b
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_1c

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_1c

    move v3, v4

    :goto_e
    invoke-virtual {v6, v3, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v5, v4

    .line 2809
    goto/16 :goto_1

    :cond_1c
    move v3, v5

    .line 2808
    goto :goto_e
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2661
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2662
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2665
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2666
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2634
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2636
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 2637
    .local v2, "menu":Landroid/view/Menu;
    if-eqz v2, :cond_0

    .line 2638
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2639
    .local v1, "extended":Z
    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2640
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2641
    if-nez v1, :cond_0

    .line 2642
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    .end local v1    # "extended":Z
    .end local v2    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2657
    :cond_1
    :goto_1
    return-void

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2653
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2654
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2655
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1814
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v2, :cond_0

    .line 1815
    sput v3, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1816
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1818
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1819
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 1820
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1

    .line 1821
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 1823
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1824
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1825
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1827
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1828
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1829
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1830
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1832
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1833
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1834
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1837
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2592
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2593
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2620
    :cond_0
    :goto_0
    return-void

    .line 2596
    :cond_1
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2597
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2598
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2599
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2600
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2601
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    .line 2602
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2603
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 2604
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2605
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 2606
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 2608
    :cond_6
    const/4 v0, 0x0

    .line 2609
    .local v0, "cancel":Z
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2610
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2611
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 2613
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :goto_1
    if-nez v0, :cond_0

    .line 2614
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_0

    .restart local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_8
    move v0, v3

    .line 2611
    goto :goto_1

    .line 2618
    .end local v0    # "cancel":Z
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2035
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 2036
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2037
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2038
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v2

    .line 2039
    .local v2, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v2, :cond_0

    .line 2040
    invoke-virtual {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->onConfigurationChanged()V

    .line 2042
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v1

    .line 2043
    .local v1, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v1, :cond_1

    .line 2044
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2046
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 2047
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_2

    .line 2048
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->onConfigurationChanged()V

    .line 2050
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 147
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NativeCrashManager;->handleDumpFiles(Landroid/app/Activity;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 150
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v32

    if-nez v32, :cond_3

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 152
    .local v19, "intent":Landroid/content/Intent;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1

    const-string/jumbo v32, "android.intent.action.SEND"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 153
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 570
    .end local v19    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v33, "mainconfig"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 158
    .local v25, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v32, "intro_crashed_time"

    const-wide/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 159
    .local v10, "crashed_time":J
    const-string/jumbo v32, "fromIntro"

    const/16 v33, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 160
    .local v17, "fromIntro":Z
    if-eqz v17, :cond_2

    .line 161
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string/jumbo v33, "intro_crashed_time"

    const-wide/16 v34, 0x0

    invoke-interface/range {v32 .. v35}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v10, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x1d4c0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_3

    if-eqz v19, :cond_3

    if-nez v17, :cond_3

    .line 164
    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v33, "logininfo2"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 165
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v30

    .line 166
    .local v30, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 167
    new-instance v20, Landroid/content/Intent;

    const-class v32, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v20, "intent2":Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto/16 :goto_0

    .line 177
    .end local v10    # "crashed_time":J
    .end local v17    # "fromIntro":Z
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "intent2":Landroid/content/Intent;
    .end local v25    # "preferences":Landroid/content/SharedPreferences;
    .end local v30    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->requestWindowFeature(I)Z

    .line 178
    const v32, 0x7f090006

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setTheme(I)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const v33, 0x7f0201c6

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 180
    sget-object v32, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_4

    sget-boolean v32, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v32, :cond_4

    .line 182
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x2000

    const/16 v34, 0x2000

    invoke-virtual/range {v32 .. v34}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_4
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x18

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_5

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->isInMultiWindowMode()Z

    move-result v32

    sput-boolean v32, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 192
    :cond_5
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 193
    sget-object v32, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_6

    sget-boolean v32, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v32, :cond_6

    .line 194
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v32

    sput v32, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 197
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const-string/jumbo v33, "status_bar_height"

    const-string/jumbo v34, "dimen"

    const-string/jumbo v35, "android"

    invoke-virtual/range {v32 .. v35}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 198
    .local v27, "resourceId":I
    if-lez v27, :cond_7

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    sput v32, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 202
    :cond_7
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 204
    new-instance v32, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x1

    invoke-direct/range {v33 .. v35}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 210
    new-instance v21, Lorg/telegram/ui/LaunchActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$1;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V

    .line 272
    .local v21, "launchLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    const/high16 v34, -0x40800000    # -1.0f

    invoke-static/range {v33 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v32, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020047

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 276
    .local v13, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v32, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v33, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    const/16 v34, -0x1

    invoke-static/range {v33 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    const v33, 0x40295274

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    sget-object v32, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x8

    :goto_2
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    const/high16 v33, 0x7f000000

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$3;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v32, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    const v33, 0x7f02003e

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    sget-object v32, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x8

    :goto_3
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 344
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    :goto_4
    new-instance v32, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    const-string/jumbo v33, "chats_menuBackground"

    invoke-static/range {v33 .. v33}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerLayout(Landroid/view/ViewGroup;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    .local v22, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v28

    .line 351
    .local v28, "screenSize":Landroid/graphics/Point;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_f

    const/high16 v32, 0x43a00000    # 320.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    :goto_5
    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 352
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LaunchActivity$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$4;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    sget-object v33, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 419
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V

    .line 421
    new-instance v32, Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    const/high16 v35, -0x40800000    # -1.0f

    invoke-static/range {v34 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object p0, v34, v35

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 425
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 427
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 428
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 429
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 430
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 431
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 432
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 433
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 434
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 435
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 436
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v32

    sget v33, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 441
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v32

    if-nez v32, :cond_10

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    new-instance v33, Lorg/telegram/ui/LoginActivity;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual/range {v32 .. v33}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 452
    :goto_6
    if-eqz p1, :cond_9

    .line 453
    :try_start_1
    const-string/jumbo v32, "fragment"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 454
    .local v16, "fragmentName":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 455
    const-string/jumbo v32, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 456
    .local v7, "args":Landroid/os/Bundle;
    const/16 v32, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v33

    sparse-switch v33, :sswitch_data_0

    :cond_8
    :goto_7
    packed-switch v32, :pswitch_data_0

    .line 532
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "fragmentName":Ljava/lang/String;
    :cond_9
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    const/16 v34, 0x0

    if-eqz p1, :cond_16

    const/16 v32, 0x1

    :goto_9
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v32

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 537
    :try_start_2
    sget-object v23, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 538
    .local v23, "os1":Ljava/lang/String;
    sget-object v24, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 539
    .local v24, "os2":Ljava/lang/String;
    if-eqz v23, :cond_17

    .line 540
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 544
    :goto_a
    if-eqz v24, :cond_18

    .line 545
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 549
    :goto_b
    const-string/jumbo v32, "flyme"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_a

    const-string/jumbo v32, "flyme"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 550
    :cond_a
    const/16 v32, 0x1

    sput-boolean v32, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    .line 551
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v31

    .line 552
    .local v31, "view":Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v32

    new-instance v33, Lorg/telegram/ui/LaunchActivity$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$5;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/view/View;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 569
    .end local v23    # "os1":Ljava/lang/String;
    .end local v24    # "os2":Ljava/lang/String;
    .end local v31    # "view":Landroid/view/View;
    :cond_b
    :goto_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->setBaseActivity(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 183
    .end local v22    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "resourceId":I
    .end local v28    # "screenSize":Landroid/graphics/Point;
    :catch_0
    move-exception v14

    .line 184
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 292
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    .restart local v27    # "resourceId":I
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 338
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 341
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "launchLayout":Landroid/widget/RelativeLayout;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v33, v0

    new-instance v34, Landroid/view/ViewGroup$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x1

    invoke-direct/range {v34 .. v36}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 351
    .restart local v22    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v28    # "screenSize":Landroid/graphics/Point;
    :cond_f
    const/high16 v32, 0x43a00000    # 320.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/high16 v34, 0x42600000    # 56.0f

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    sub-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    goto/16 :goto_5

    .line 445
    :cond_10
    new-instance v12, Lorg/telegram/ui/DialogsActivity;

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 446
    .local v12, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_6

    .line 456
    .end local v12    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v16    # "fragmentName":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    const-string/jumbo v33, "chat"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x0

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v33, "settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x1

    goto/16 :goto_7

    :sswitch_2
    const-string/jumbo v33, "group"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x2

    goto/16 :goto_7

    :sswitch_3
    const-string/jumbo v33, "channel"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x3

    goto/16 :goto_7

    :sswitch_4
    const-string/jumbo v33, "edit"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x4

    goto/16 :goto_7

    :sswitch_5
    const-string/jumbo v33, "chat_profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x5

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v33, "wallpapers"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    const/16 v32, 0x6

    goto/16 :goto_7

    .line 458
    :pswitch_0
    if-eqz v7, :cond_9

    .line 459
    new-instance v9, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 460
    .local v9, "chat":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 461
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ChatActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    .line 512
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "chat":Lorg/telegram/ui/ChatActivity;
    .end local v16    # "fragmentName":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 513
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 466
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v16    # "fragmentName":Ljava/lang/String;
    :pswitch_1
    :try_start_4
    new-instance v29, Lorg/telegram/ui/SettingsActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    .line 467
    .local v29, "settings":Lorg/telegram/ui/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 468
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 472
    .end local v29    # "settings":Lorg/telegram/ui/SettingsActivity;
    :pswitch_2
    if-eqz v7, :cond_9

    .line 473
    new-instance v18, Lorg/telegram/ui/GroupCreateFinalActivity;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    .line 474
    .local v18, "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 475
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 480
    .end local v18    # "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    :pswitch_3
    if-eqz v7, :cond_9

    .line 481
    new-instance v8, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v8, v7}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 482
    .local v8, "channel":Lorg/telegram/ui/ChannelCreateActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChannelCreateActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 488
    .end local v8    # "channel":Lorg/telegram/ui/ChannelCreateActivity;
    :pswitch_4
    if-eqz v7, :cond_9

    .line 489
    new-instance v8, Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {v8, v7}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 490
    .local v8, "channel":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChannelEditActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 496
    .end local v8    # "channel":Lorg/telegram/ui/ChannelEditActivity;
    :pswitch_5
    if-eqz v7, :cond_9

    .line 497
    new-instance v26, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 498
    .local v26, "profile":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 499
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 504
    .end local v26    # "profile":Lorg/telegram/ui/ProfileActivity;
    :pswitch_6
    new-instance v29, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    .line 505
    .local v29, "settings":Lorg/telegram/ui/WallpapersActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 506
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    .line 516
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "fragmentName":Ljava/lang/String;
    .end local v29    # "settings":Lorg/telegram/ui/WallpapersActivity;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 517
    .local v15, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v0, v15, Lorg/telegram/ui/DialogsActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 518
    check-cast v15, Lorg/telegram/ui/DialogsActivity;

    .end local v15    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 520
    :cond_12
    const/4 v6, 0x1

    .line 521
    .local v6, "allowOpen":Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v32

    if-eqz v32, :cond_13

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_15

    const/4 v6, 0x1

    .line 523
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_13

    .line 524
    const/4 v6, 0x0

    .line 527
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 528
    const/4 v6, 0x0

    .line 530
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_8

    .line 522
    :cond_15
    const/4 v6, 0x0

    goto :goto_d

    .line 534
    .end local v6    # "allowOpen":Z
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 542
    .restart local v23    # "os1":Ljava/lang/String;
    .restart local v24    # "os2":Ljava/lang/String;
    :cond_17
    :try_start_5
    const-string/jumbo v23, ""

    goto/16 :goto_a

    .line 547
    :cond_18
    const-string/jumbo v24, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_b

    .line 566
    .end local v23    # "os1":Ljava/lang/String;
    .end local v24    # "os2":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 567
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 456
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b244d4f -> :sswitch_6
        -0x5070143e -> :sswitch_5
        0x2e9358 -> :sswitch_0
        0x2f6e0a -> :sswitch_4
        0x5e0f67f -> :sswitch_2
        0x2c0b7d03 -> :sswitch_3
        0x5582bc23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1950
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 1951
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/SecretMediaViewer;->destroyPhotoViewer()V

    .line 1952
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ArticleViewer;->destroyArticleViewer()V

    .line 1953
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/StickerPreviewViewer;->destroy()V

    .line 1954
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    .line 1955
    .local v3, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/MediaController;->setBaseActivity(Landroid/app/Activity;Z)V

    .line 1956
    if-eqz v3, :cond_0

    .line 1957
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 1959
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->destroyResources()V

    .line 1960
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v2

    .line 1961
    .local v2, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v2, :cond_1

    .line 1962
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    .line 1964
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v1

    .line 1965
    .local v1, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v1, :cond_2

    .line 1966
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 1969
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v5, :cond_3

    .line 1970
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1971
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :cond_3
    :goto_0
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v5, :cond_4

    .line 1978
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 1979
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1984
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1985
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 1986
    return-void

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1981
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1982
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 2689
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_2

    .line 2690
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2718
    :goto_0
    return v0

    .line 2692
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2693
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2695
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2696
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2697
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2718
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2698
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2699
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2701
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2704
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2705
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2706
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2707
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2709
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_1

    .line 2711
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_1

    .line 2714
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2624
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2625
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2626
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2628
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2630
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2054
    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 2055
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2056
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1699
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1700
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 1701
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1910
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    .line 1912
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 1913
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$16;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1920
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V

    .line 1921
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1922
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1926
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_1

    .line 1927
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 1929
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1930
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 1931
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1932
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onPause()V

    .line 1934
    :cond_2
    return-void
.end method

.method public onPreIme()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2674
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2675
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 2684
    :goto_0
    return v0

    .line 2677
    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2678
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2680
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2681
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2684
    goto :goto_0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 2917
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_0

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2923
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2924
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1841
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1842
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    if-eq p1, v8, :cond_0

    if-eq p1, v9, :cond_0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_c

    .line 1843
    :cond_0
    const/4 v2, 0x1

    .line 1844
    .local v2, "showAlert":Z
    array-length v3, p3

    if-lez v3, :cond_6

    aget v3, p3, v5

    if-nez v3, :cond_6

    .line 1845
    if-ne p1, v7, :cond_2

    .line 1846
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1906
    .end local v2    # "showAlert":Z
    :cond_1
    :goto_0
    return-void

    .line 1848
    .restart local v2    # "showAlert":Z
    :cond_2
    if-ne p1, v8, :cond_3

    .line 1849
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_0

    .line 1851
    :cond_3
    if-ne p1, v6, :cond_4

    .line 1852
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    goto :goto_0

    .line 1854
    :cond_4
    if-eq p1, v9, :cond_5

    const/16 v3, 0x14

    if-ne p1, v3, :cond_6

    .line 1855
    :cond_5
    const/4 v2, 0x0

    .line 1858
    :cond_6
    if-eqz v2, :cond_d

    .line 1859
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1860
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1861
    if-ne p1, v6, :cond_8

    .line 1862
    const-string/jumbo v3, "PermissionNoAudio"

    const v4, 0x7f0704ad

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1870
    :cond_7
    :goto_1
    const-string/jumbo v3, "PermissionOpenSettings"

    const v4, 0x7f0704b2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$15;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LaunchActivity$15;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1883
    const-string/jumbo v3, "OK"

    const v4, 0x7f070440

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1884
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 1863
    :cond_8
    if-ne p1, v7, :cond_9

    .line 1864
    const-string/jumbo v3, "PermissionStorage"

    const v4, 0x7f0704b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1865
    :cond_9
    if-ne p1, v8, :cond_a

    .line 1866
    const-string/jumbo v3, "PermissionContacts"

    const v4, 0x7f0704ab

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1867
    :cond_a
    if-eq p1, v9, :cond_b

    const/16 v3, 0x14

    if-ne p1, v3, :cond_7

    .line 1868
    :cond_b
    const-string/jumbo v3, "PermissionNoCamera"

    const v4, 0x7f0704af

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1887
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "showAlert":Z
    :cond_c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 1888
    array-length v3, p3

    if-lez v3, :cond_d

    aget v3, p3, v5

    if-nez v3, :cond_d

    .line 1889
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1892
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 1893
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1894
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1896
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1897
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_f

    .line 1898
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1899
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1901
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1902
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1903
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1990
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1991
    invoke-direct {p0, v4}, Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V

    .line 1992
    sput-boolean v4, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 1993
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$17;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$17;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2000
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpace()V

    .line 2001
    invoke-static {}, Lorg/telegram/messenger/MediaController;->checkGallery()V

    .line 2002
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodeResume()V

    .line 2003
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2004
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2005
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2006
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2007
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2017
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 2018
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 2019
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2020
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    .line 2021
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2022
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->onResume()V

    .line 2024
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v1

    .line 2025
    .local v1, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2026
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2027
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_2

    .line 2028
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 2031
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    return-void

    .line 2010
    .end local v1    # "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2011
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2012
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2013
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2015
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2545
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2546
    const/4 v3, 0x0

    .line 2547
    .local v3, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2548
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2549
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2561
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 2562
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 2563
    .local v1, "args":Landroid/os/Bundle;
    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 2564
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2565
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 2588
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    :goto_2
    return-void

    .line 2550
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2551
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2552
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2553
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2556
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2557
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2566
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_6
    instance-of v4, v3, Lorg/telegram/ui/SettingsActivity;

    if-eqz v4, :cond_7

    .line 2567
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "settings"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2585
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :catch_0
    move-exception v2

    .line 2586
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2568
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :try_start_1
    instance-of v4, v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 2569
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2570
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "group"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2571
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/WallpapersActivity;

    if-eqz v4, :cond_9

    .line 2572
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "wallpapers"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2573
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->isChat()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 2574
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2575
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat_profile"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2576
    :cond_a
    instance-of v4, v3, Lorg/telegram/ui/ChannelCreateActivity;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string/jumbo v4, "step"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 2577
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2578
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "channel"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2579
    :cond_b
    instance-of v4, v3, Lorg/telegram/ui/ChannelEditActivity;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 2580
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2581
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "edit"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1938
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1939
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 1940
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1944
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1945
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 1946
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1794
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 1797
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public rebuildAllFragments(Z)V
    .locals 2
    .param p1, "last"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2908
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2913
    :goto_0
    return-void

    .line 2911
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    goto :goto_0
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 1665
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_0

    .line 1666
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1667
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1674
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1675
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$14;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1690
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1694
    :goto_1
    return-object v1

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1691
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1692
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
