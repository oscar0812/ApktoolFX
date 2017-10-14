.class public final Lcom/google/android/gms/common/internal/zzbx;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzz",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method protected final zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/Api$zzg;->zzd(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzdb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzdc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
