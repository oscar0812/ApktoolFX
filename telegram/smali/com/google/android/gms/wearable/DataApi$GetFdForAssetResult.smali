.class public interface abstract Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/DataApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetFdForAssetResult"
.end annotation


# virtual methods
.method public abstract getFd()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method
