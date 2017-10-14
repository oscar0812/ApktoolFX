.class public Lcom/google/android/gms/internal/zzbds;
.super Ljava/lang/Object;


# instance fields
.field protected final zzaEG:Lcom/google/android/gms/internal/zzbdt;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzbdt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbds;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    return-void
.end method

.method protected static zzb(Lcom/google/android/gms/internal/zzbdr;)Lcom/google/android/gms/internal/zzbdt;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdr;->zzqC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdr;->zzqE()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbeo;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzbeo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdr;->zzqD()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdu;->zzo(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbdr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbdr;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbds;->zzb(Lcom/google/android/gms/internal/zzbdr;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbds;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbdt;->zzqF()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
