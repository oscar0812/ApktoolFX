.class public final Lcom/google/android/gms/common/api/GoogleApi$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final zzaAO:Lcom/google/android/gms/common/api/GoogleApi$zza;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final zzaAP:Lcom/google/android/gms/internal/zzbem;

.field public final zzaAQ:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->zzpj()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzaAO:Lcom/google/android/gms/common/api/GoogleApi$zza;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbem;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzaAP:Lcom/google/android/gms/internal/zzbem;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi$zza;->account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzaAQ:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbem;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zzc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApi$zza;-><init>(Lcom/google/android/gms/internal/zzbem;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
