.class final Lcom/google/android/gms/internal/zzbbd;
.super Lcom/google/android/gms/internal/zzbdl;


# instance fields
.field private synthetic zzaBT:Landroid/app/Dialog;

.field private synthetic zzaBU:Lcom/google/android/gms/internal/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbc;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbd;->zzaBU:Lcom/google/android/gms/internal/zzbbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbd;->zzaBT:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzpA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbd;->zzaBU:Lcom/google/android/gms/internal/zzbbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbba;->zzpx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbd;->zzaBT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbd;->zzaBT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
