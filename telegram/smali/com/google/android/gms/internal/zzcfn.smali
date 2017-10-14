.class public final Lcom/google/android/gms/internal/zzcfn;
.super Ljava/lang/Object;


# instance fields
.field private final mPriority:I

.field private synthetic zzbqW:Lcom/google/android/gms/internal/zzcfl;

.field private final zzbqX:Z

.field private final zzbqY:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfl;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzcfn;->mPriority:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqX:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqY:Z

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iget v1, p0, Lcom/google/android/gms/internal/zzcfn;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqX:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqY:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcfl;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iget v1, p0, Lcom/google/android/gms/internal/zzcfn;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqX:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqY:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcfl;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iget v1, p0, Lcom/google/android/gms/internal/zzcfn;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqX:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqY:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcfl;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iget v1, p0, Lcom/google/android/gms/internal/zzcfn;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqX:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcfn;->zzbqY:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcfl;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
