.class public Lcom/google/android/gms/vision/MultiDetector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/MultiDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbNc:Lcom/google/android/gms/vision/MultiDetector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/MultiDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/MultiDetector;-><init>(Lcom/google/android/gms/vision/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/MultiDetector$Builder;->zzbNc:Lcom/google/android/gms/vision/MultiDetector;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/vision/Detector;)Lcom/google/android/gms/vision/MultiDetector$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/vision/MultiDetector$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/MultiDetector$Builder;->zzbNc:Lcom/google/android/gms/vision/MultiDetector;

    invoke-static {v0}, Lcom/google/android/gms/vision/MultiDetector;->zza(Lcom/google/android/gms/vision/MultiDetector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/vision/MultiDetector;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/vision/MultiDetector$Builder;->zzbNc:Lcom/google/android/gms/vision/MultiDetector;

    invoke-static {v0}, Lcom/google/android/gms/vision/MultiDetector;->zza(Lcom/google/android/gms/vision/MultiDetector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No underlying detectors added to MultiDetector."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/MultiDetector$Builder;->zzbNc:Lcom/google/android/gms/vision/MultiDetector;

    return-object v0
.end method
