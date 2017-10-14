.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private synthetic zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    return-object v0
.end method

.method public final setEnvironment(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    return-object p0
.end method

.method public final setFragmentStyle(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object p0
.end method

.method public final setFragmentStyle(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object p0
.end method

.method public final setMode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzc(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    return-object p0
.end method

.method public final setTheme(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->zzbQw:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzb(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I

    return-object p0
.end method
