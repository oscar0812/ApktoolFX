.class final Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;
.super Lcom/google/android/gms/dynamic/zza;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zza",
        "<",
        "Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private synthetic zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    return-void
.end method

.method protected final zza(Landroid/widget/FrameLayout;)V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/google/android/gms/R$string;->wallet_buy_button_place_holder:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zze(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zze(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const-string/jumbo v5, "buyButtonWidth"

    invoke-virtual {v3, v5, v4, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->zza(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I

    move-result v1

    const-string/jumbo v5, "buyButtonHeight"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->zza(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I

    move-result v0

    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/dynamic/zzo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/zzo",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzc(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzd(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/dynamic/zzj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v2}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zze(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v3}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzf(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zza;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gz;->zza(Landroid/app/Activity;Lcom/google/android/gms/dynamic/zzk;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/gd;)Lcom/google/android/gms/internal/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    new-instance v2, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;-><init>(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/wallet/fragment/zzb;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/zzo;->zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzg(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzg(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzh(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzh(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzi(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzi(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;Lcom/google/android/gms/wallet/MaskedWallet;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzj(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zzj(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment$zzb;Z)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$zzc;->zzbQs:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-static {v0, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
