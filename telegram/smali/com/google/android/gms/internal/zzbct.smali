.class final Lcom/google/android/gms/internal/zzbct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaDN:Lcom/google/android/gms/internal/zzbcp;

.field private synthetic zzaDP:Lcom/google/android/gms/internal/zzben;

.field private synthetic zzaDQ:Z

.field private synthetic zzaqW:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcp;Lcom/google/android/gms/internal/zzben;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbct;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbct;->zzaDP:Lcom/google/android/gms/internal/zzben;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbct;->zzaDQ:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbct;->zzaqW:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcp;->zzc(Lcom/google/android/gms/internal/zzbcp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzaj(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzmP()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcp;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcp;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaDP:Lcom/google/android/gms/internal/zzben;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzben;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaDQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzaqW:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
