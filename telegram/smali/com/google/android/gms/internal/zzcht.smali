.class final Lcom/google/android/gms/internal/zzcht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbtA:Z

.field private synthetic zzbtB:Z

.field private synthetic zzbtC:Z

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbty:J

.field private synthetic zzbtz:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcht;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcht;->zzbth:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcht;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcht;->zzbty:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcht;->zzbtz:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcht;->zzbtA:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzcht;->zzbtB:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzcht;->zzbtC:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzcht;->zzbjh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcht;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcht;->zzbth:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcht;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcht;->zzbty:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcht;->zzbtz:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcht;->zzbtA:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzcht;->zzbtB:Z

    iget-boolean v9, p0, Lcom/google/android/gms/internal/zzcht;->zzbtC:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzcht;->zzbjh:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/zzchl;->zza(Lcom/google/android/gms/internal/zzchl;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
