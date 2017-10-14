.class Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field currentTime:F

.field lifeTime:F

.field final synthetic this$1:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

.field velocity:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->this$1:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;Lorg/telegram/ui/SecretMediaViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
    .param p2, "x1"    # Lorg/telegram/ui/SecretMediaViewer$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;-><init>(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;)V

    return-void
.end method
