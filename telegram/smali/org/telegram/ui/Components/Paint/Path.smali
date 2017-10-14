.class public Lorg/telegram/ui/Components/Paint/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field private baseWeight:F

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private color:I

.field private points:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/telegram/ui/Components/Paint/Point;",
            ">;"
        }
    .end annotation
.end field

.field public remainder:D


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Point;)V
    .locals 1
    .param p1, "point"    # Lorg/telegram/ui/Components/Paint/Point;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    .line 15
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public constructor <init>([Lorg/telegram/ui/Components/Paint/Point;)V
    .locals 2
    .param p1, "points"    # [Lorg/telegram/ui/Components/Paint/Point;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public getBaseWeight()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Path;->baseWeight:F

    return v0
.end method

.method public getBrush()Lorg/telegram/ui/Components/Paint/Brush;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Path;->color:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPoints()[Lorg/telegram/ui/Components/Paint/Point;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lorg/telegram/ui/Components/Paint/Point;

    .line 31
    .local v0, "points":[Lorg/telegram/ui/Components/Paint/Point;
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    return-object v0
.end method

.method public setup(IFLorg/telegram/ui/Components/Paint/Brush;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "baseWeight"    # F
    .param p3, "brush"    # Lorg/telegram/ui/Components/Paint/Brush;

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Path;->color:I

    .line 49
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Path;->baseWeight:F

    .line 50
    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Path;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 51
    return-void
.end method
