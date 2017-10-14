.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    }
.end annotation


# instance fields
.field public final environment:I

.field public final theme:I

.field final zzbPS:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zza(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zzb(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zzc(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->zzbPS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;Lcom/google/android/gms/wallet/zzaa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/zzaa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>()V

    return-void
.end method
