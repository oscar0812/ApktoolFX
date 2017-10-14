.class public Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieExtendsBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mvex"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "mvex"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
