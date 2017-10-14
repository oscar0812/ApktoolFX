.class public interface abstract Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;
.super Ljava/lang/Object;
.source "CencEncryptedTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# virtual methods
.method public abstract getDefaultKeyId()Ljava/util/UUID;
.end method

.method public abstract getSampleEncryptionEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSubSampleEncryption()Z
.end method
