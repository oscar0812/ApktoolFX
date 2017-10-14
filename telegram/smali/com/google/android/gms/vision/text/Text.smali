.class public interface abstract Lcom/google/android/gms/vision/text/Text;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBoundingBox()Landroid/graphics/Rect;
.end method

.method public abstract getComponents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCornerPoints()[Landroid/graphics/Point;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
