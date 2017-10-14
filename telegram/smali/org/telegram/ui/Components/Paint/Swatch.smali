.class public Lorg/telegram/ui/Components/Paint/Swatch;
.super Ljava/lang/Object;
.source "Swatch.java"


# instance fields
.field public brushWeight:F

.field public color:I

.field public colorLocation:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "colorLocation"    # F
    .param p3, "brushWeight"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 11
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 12
    iput p3, p0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 13
    return-void
.end method
