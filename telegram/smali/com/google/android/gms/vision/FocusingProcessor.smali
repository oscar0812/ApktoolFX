.class public abstract Lcom/google/android/gms/vision/FocusingProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private zzbMB:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzbMQ:Lcom/google/android/gms/vision/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Tracker",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzbMR:I

.field private zzbMS:Z

.field private zzbMT:I

.field private zzbMU:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector",
            "<TT;>;",
            "Lcom/google/android/gms/vision/Tracker",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMR:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMS:Z

    iput v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMU:I

    iput-object p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMB:Lcom/google/android/gms/vision/Detector;

    iput-object p2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMU:I

    iget v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMR:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMS:Z

    :goto_0
    iget v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMU:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Tracker;->onMissing(Lcom/google/android/gms/vision/Detector$Detections;)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMU:I

    iget-boolean v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMS:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMT:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/vision/Tracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMS:Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/FocusingProcessor;->selectFocus(Lcom/google/android/gms/vision/Detector$Detections;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "FocusingProcessor"

    const/16 v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid focus selected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMS:Z

    iput v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMT:I

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMB:Lcom/google/android/gms/vision/Detector;

    iget v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMT:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/Detector;->setFocus(I)Z

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    iget v2, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMT:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/vision/Tracker;->onNewItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/vision/Tracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMQ:Lcom/google/android/gms/vision/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    return-void
.end method

.method public abstract selectFocus(Lcom/google/android/gms/vision/Detector$Detections;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method protected final zzbK(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Invalid max gap: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->zzbMR:I

    return-void
.end method
