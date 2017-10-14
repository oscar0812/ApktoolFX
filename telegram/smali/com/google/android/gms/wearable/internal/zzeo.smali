.class public final Lcom/google/android/gms/wearable/internal/zzeo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzeo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaku:I

.field private zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzep;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzep;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzeo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzaku:I

    if-eqz p2, :cond_2

    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/zzdk;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzdk;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/internal/zzdm;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzdk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzeo;->zzbRJ:Lcom/google/android/gms/wearable/internal/zzdk;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/zzdk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
