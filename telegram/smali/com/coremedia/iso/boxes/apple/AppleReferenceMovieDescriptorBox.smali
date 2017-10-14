.class public Lcom/coremedia/iso/boxes/apple/AppleReferenceMovieDescriptorBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "AppleReferenceMovieDescriptorBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rmda"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "rmda"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
