.class public final Lcom/google/android/gms/internal/zzbgc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbgc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaIB:Lcom/google/android/gms/internal/zzbge;

.field private zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbgc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzbge;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbgc;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgc;->zzaIB:Lcom/google/android/gms/internal/zzbge;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbge;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbgc;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgc;->zzaIB:Lcom/google/android/gms/internal/zzbge;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbgk;)Lcom/google/android/gms/internal/zzbgc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbgk",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzbgc;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbge;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbgc;

    check-cast p0, Lcom/google/android/gms/internal/zzbge;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbgc;-><init>(Lcom/google/android/gms/internal/zzbge;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbgc;->zzaku:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgc;->zzaIB:Lcom/google/android/gms/internal/zzbge;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzrK()Lcom/google/android/gms/internal/zzbgk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbgk",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgc;->zzaIB:Lcom/google/android/gms/internal/zzbge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgc;->zzaIB:Lcom/google/android/gms/internal/zzbge;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
