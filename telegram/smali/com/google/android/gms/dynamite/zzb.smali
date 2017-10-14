.class final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$zzd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzh;)Lcom/google/android/gms/dynamite/zzi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzh;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSV:I

    iget v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSV:I

    if-eqz v1, :cond_1

    iput v2, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSW:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/zzh;->zzE(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    iget v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSW:I

    goto :goto_0
.end method
