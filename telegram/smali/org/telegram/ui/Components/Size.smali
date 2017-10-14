.class public Lorg/telegram/ui/Components/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/telegram/ui/Components/Size;->width:F

    .line 21
    iput p2, p0, Lorg/telegram/ui/Components/Size;->height:F

    .line 22
    return-void
.end method
