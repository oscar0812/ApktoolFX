.class public Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private nextPressed:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lorg/telegram/ui/CancelAccountDeletionActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    .line 321
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    .line 323
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->setOrientation(I)V

    .line 325
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v1, -0x1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    return p1
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    const-string/jumbo v0, "CancelAccountReset"

    const v1, 0x7f0700f5

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onNextPressed()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 334
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/CancelAccountDeletionActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    if-eqz v9, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 338
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-eq v9, v7, :cond_5

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-eqz v9, :cond_5

    move v5, v7

    .line 339
    .local v5, "simcardAvailable":Z
    :goto_1
    const/4 v0, 0x1

    .line 340
    .local v0, "allowCall":Z
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    if-eqz v5, :cond_2

    .line 374
    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;-><init>()V

    .line 375
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;
    iput-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    .line 376
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v9}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$200(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->hash:Ljava/lang/String;

    .line 377
    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    if-eqz v9, :cond_4

    .line 379
    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 381
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v9}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v9}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    move v9, v7

    :goto_2
    iput-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z

    .line 382
    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z

    if-nez v9, :cond_4

    .line 383
    const/4 v9, 0x0

    iput-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v2    # "number":Ljava/lang/String;
    :cond_4
    :goto_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v3, "params":Landroid/os/Bundle;
    const-string/jumbo v8, "phone"

    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-static {v9}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iput-boolean v7, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    .line 397
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    invoke-direct {v8, p0, v3, v4}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;)V

    const/4 v9, 0x2

    invoke-virtual {v7, v4, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .end local v0    # "allowCall":Z
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;
    .end local v5    # "simcardAvailable":Z
    :cond_5
    move v5, v8

    .line 338
    goto :goto_1

    .restart local v0    # "allowCall":Z
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;
    .restart local v5    # "simcardAvailable":Z
    :cond_6
    move v9, v8

    .line 381
    goto :goto_2

    .line 386
    :cond_7
    const/4 v9, 0x0

    :try_start_1
    iput-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 388
    .end local v2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    .line 390
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 423
    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->onNextPressed()V

    .line 424
    return-void
.end method
