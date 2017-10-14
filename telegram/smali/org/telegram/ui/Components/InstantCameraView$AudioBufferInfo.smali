.class Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
.super Ljava/lang/Object;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBufferInfo"
.end annotation


# instance fields
.field buffer:[B

.field last:Z

.field lastWroteBuffer:I

.field offset:[J

.field read:[I

.field results:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1287
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[B

    .line 1289
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    .line 1290
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/InstantCameraView$1;

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method
