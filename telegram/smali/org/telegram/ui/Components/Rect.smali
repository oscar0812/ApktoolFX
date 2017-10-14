.class public Lorg/telegram/ui/Components/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/telegram/ui/Components/Rect;->x:F

    .line 24
    iput p2, p0, Lorg/telegram/ui/Components/Rect;->y:F

    .line 25
    iput p3, p0, Lorg/telegram/ui/Components/Rect;->width:F

    .line 26
    iput p4, p0, Lorg/telegram/ui/Components/Rect;->height:F

    .line 27
    return-void
.end method
