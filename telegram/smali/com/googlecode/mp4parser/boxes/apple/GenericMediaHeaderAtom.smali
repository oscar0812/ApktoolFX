.class public Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "GenericMediaHeaderAtom.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "gmhd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "gmhd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
