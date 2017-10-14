.class public final Lcom/google/android/gms/internal/zzcek;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcek;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field private versionCode:I

.field public zzbpc:Ljava/lang/String;

.field public zzbpd:Lcom/google/android/gms/internal/zzcji;

.field public zzbpe:J

.field public zzbpf:Z

.field public zzbpg:Ljava/lang/String;

.field public zzbph:Lcom/google/android/gms/internal/zzcez;

.field public zzbpi:J

.field public zzbpj:Lcom/google/android/gms/internal/zzcez;

.field public zzbpk:J

.field public zzbpl:Lcom/google/android/gms/internal/zzcez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcel;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcek;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcji;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcez;JLcom/google/android/gms/internal/zzcez;JLcom/google/android/gms/internal/zzcez;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcek;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpk:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcek;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcek;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpk:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcji;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcez;JLcom/google/android/gms/internal/zzcez;JLcom/google/android/gms/internal/zzcez;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzcek;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpk:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzcek;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpk:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
