.class public final Lcom/google/android/gms/common/images/zzc;
.super Lcom/google/android/gms/common/images/zza;


# instance fields
.field private zzaGm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzr(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zzc;->zzaGm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzr(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zzc;->zzaGm:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zzc;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zzc;

    iget-object v0, p0, Lcom/google/android/gms/common/images/zzc;->zzaGm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zzc;->zzaGm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/images/zzc;->zzaGm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-nez p3, :cond_5

    if-nez p4, :cond_5

    const/4 v1, 0x1

    move v5, v1

    :goto_0
    if-eqz v5, :cond_0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbfl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbfl;->zzqY()I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/common/images/zzc;->zzaGh:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/gms/common/images/zzc;->zzaGh:I

    if-eq v1, v3, :cond_4

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/zzc;->zzc(ZZ)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbfg;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/zzbfg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbfg;->zzqW()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/zzbfg;

    invoke-direct {v3, v1, p1}, Lcom/google/android/gms/internal/zzbfg;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbfl;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzbfl;

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/images/zzc;->zzaGf:Lcom/google/android/gms/common/images/zzb;

    iget-object v2, v2, Lcom/google/android/gms/common/images/zzb;->uri:Landroid/net/Uri;

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbfl;->zzo(Landroid/net/Uri;)V

    if-eqz v5, :cond_6

    iget v2, p0, Lcom/google/android/gms/common/images/zzc;->zzaGh:I

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbfl;->zzax(I)V

    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbfg;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbfg;->startTransition(I)V

    :cond_4
    return-void

    :cond_5
    move v5, v4

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_1

    :cond_8
    move-object v1, p1

    goto :goto_2
.end method
