.class public interface abstract Lcom/google/android/gms/wearable/DataItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/wearable/DataItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAssets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData()[B
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract setData([B)Lcom/google/android/gms/wearable/DataItem;
.end method
