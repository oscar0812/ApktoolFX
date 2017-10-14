.class public Lcom/coremedia/iso/boxes/apple/AppleItemListBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "AppleItemListBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ilst"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "ilst"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
