.class final Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$1;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 147
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$1;->newArray(I)[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 152
    new-array v0, p1, [Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    return-object v0
.end method
