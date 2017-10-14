.class public final Lcom/google/android/gms/internal/fk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbNS:Ljava/lang/String;

.field public final zzbNX:[Lcom/google/android/gms/internal/ft;

.field public final zzbNY:Lcom/google/android/gms/internal/fe;

.field private zzbNZ:Lcom/google/android/gms/internal/fe;

.field private zzbOa:Lcom/google/android/gms/internal/fe;

.field public final zzbOb:Ljava/lang/String;

.field private zzbOc:F

.field private zzbOd:I

.field public final zzbOe:Z

.field public final zzbOf:I

.field public final zzbOg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/ft;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fe;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fk;->zzbNX:[Lcom/google/android/gms/internal/ft;

    iput-object p2, p0, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    iput-object p3, p0, Lcom/google/android/gms/internal/fk;->zzbNZ:Lcom/google/android/gms/internal/fe;

    iput-object p4, p0, Lcom/google/android/gms/internal/fk;->zzbOa:Lcom/google/android/gms/internal/fe;

    iput-object p5, p0, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/fk;->zzbOc:F

    iput-object p7, p0, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/fk;->zzbOd:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/fk;->zzbOe:Z

    iput p10, p0, Lcom/google/android/gms/internal/fk;->zzbOf:I

    iput p11, p0, Lcom/google/android/gms/internal/fk;->zzbOg:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbNX:[Lcom/google/android/gms/internal/ft;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbNZ:Lcom/google/android/gms/internal/fe;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbOa:Lcom/google/android/gms/internal/fe;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/fk;->zzbOc:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/internal/fk;->zzbOd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fk;->zzbOe:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/fk;->zzbOf:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/fk;->zzbOg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
