.class public final Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final DEFAULT:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;


# instance fields
.field public final tunnelingAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->DEFAULT:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tunnelingAudioSessionId"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 49
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    .line 52
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    return v0
.end method
