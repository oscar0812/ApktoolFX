.class public final Lcom/google/android/gms/vision/face/internal/client/zza;
.super Lcom/google/android/gms/internal/fb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fb",
        "<",
        "Lcom/google/android/gms/vision/face/internal/client/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbNz:Lcom/google/android/gms/vision/face/internal/client/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzc;)V
    .locals 1

    const-string/jumbo v0, "FaceNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->zzbNz:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzDR()Ljava/lang/Object;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;
    .locals 8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbNC:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    if-nez v2, :cond_0

    new-array v0, v0, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v2

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    new-instance v4, Lcom/google/android/gms/vision/face/Landmark;

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v3, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    iget v7, v3, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v3, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->type:I

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final zzDO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzDR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zze;

    invoke-interface {v0}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzDP()V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const-string/jumbo v0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzcV(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->zzbNz:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/face/internal/client/zzc;)Lcom/google/android/gms/vision/face/internal/client/zze;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/vision/face/internal/client/zzg;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zzg;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/face/internal/client/zzh;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zzb(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/fc;)[Lcom/google/android/gms/vision/face/Face;
    .locals 15

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->isOperational()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Face;

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzDR()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/face/internal/client/zze;

    move-object/from16 v0, p2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/fc;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    array-length v1, v14

    new-array v13, v1, [Lcom/google/android/gms/vision/face/Face;

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    array-length v1, v14

    if-ge v12, v1, :cond_1

    aget-object v11, v14, v12

    new-instance v1, Lcom/google/android/gms/vision/face/Face;

    iget v2, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->id:I

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerX:F

    iget v5, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerY:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v4, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->width:F

    iget v5, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->height:F

    iget v6, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbNA:F

    iget v7, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbNB:F

    invoke-static {v11}, Lcom/google/android/gms/vision/face/internal/client/zza;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v8

    iget v9, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbND:F

    iget v10, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbNE:F

    iget v11, v11, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzbNF:F

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/vision/face/Face;-><init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V

    aput-object v1, v13, v12

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FaceNativeHandle"

    const-string/jumbo v3, "Could not call native face detector"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Face;

    goto :goto_0

    :cond_1
    move-object v1, v13

    goto :goto_0
.end method

.method public final zzbN(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzDR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/vision/face/internal/client/zze;->zzbN(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FaceNativeHandle"

    const-string/jumbo v3, "Could not call native face detector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method
