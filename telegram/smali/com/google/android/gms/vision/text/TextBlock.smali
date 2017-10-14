.class public Lcom/google/android/gms/vision/text/TextBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private cornerPoints:[Landroid/graphics/Point;

.field private zzbNQ:[Lcom/google/android/gms/internal/fk;

.field private zzbNR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/text/Line;",
            ">;"
        }
    .end annotation
.end field

.field private zzbNS:Ljava/lang/String;

.field private zzbNT:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/fk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/fk;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fk;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(IIIILcom/google/android/gms/internal/fe;)[Landroid/graphics/Point;
    .locals 16

    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/android/gms/internal/fe;->left:I

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/internal/fe;->top:I

    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/4 v2, 0x4

    new-array v5, v2, [Landroid/graphics/Point;

    const/4 v2, 0x0

    new-instance v10, Landroid/graphics/Point;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v5, v2

    const/4 v2, 0x1

    new-instance v10, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v5, v2

    const/4 v2, 0x2

    new-instance v10, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v5, v2

    const/4 v2, 0x3

    new-instance v10, Landroid/graphics/Point;

    move/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v10, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v5, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v10, 0x4

    if-ge v2, v10, :cond_0

    aget-object v10, v5, v2

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    mul-double/2addr v10, v8

    aget-object v12, v5, v2

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    double-to-int v10, v10

    aget-object v11, v5, v2

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-double v12, v11

    mul-double/2addr v12, v6

    aget-object v11, v5, v2

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-double v14, v11

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-int v11, v12

    aget-object v12, v5, v2

    iput v10, v12, Landroid/graphics/Point;->x:I

    aget-object v10, v5, v2

    iput v11, v10, Landroid/graphics/Point;->y:I

    aget-object v10, v5, v2

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNT:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/vision/text/zzc;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNT:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNR:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNR:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    iget-object v4, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNR:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/vision/text/Line;

    invoke-direct {v5, v1}, Lcom/google/android/gms/vision/text/Line;-><init>(Lcom/google/android/gms/internal/fk;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNR:Ljava/util/List;

    goto :goto_0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v2, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    return-object v2

    :cond_1
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const v4, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    iget v9, v8, Lcom/google/android/gms/internal/fe;->left:I

    neg-int v9, v9

    iget v10, v8, Lcom/google/android/gms/internal/fe;->top:I

    neg-int v10, v10

    iget v11, v8, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget v8, v8, Lcom/google/android/gms/internal/fe;->zzbNW:F

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const/4 v8, 0x4

    new-array v11, v8, [Landroid/graphics/Point;

    const/4 v8, 0x0

    new-instance v16, Landroid/graphics/Point;

    iget v0, v7, Lcom/google/android/gms/internal/fe;->left:I

    move/from16 v17, v0

    iget v0, v7, Lcom/google/android/gms/internal/fe;->top:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/graphics/Point;-><init>(II)V

    aput-object v16, v11, v8

    const/4 v8, 0x0

    aget-object v8, v11, v8

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    const/4 v8, 0x0

    aget-object v8, v11, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    mul-double/2addr v8, v14

    const/4 v10, 0x0

    aget-object v10, v11, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v8, v8, v16

    double-to-int v8, v8

    const/4 v9, 0x0

    aget-object v9, v11, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    neg-int v9, v9

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    const/4 v9, 0x0

    aget-object v9, v11, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v9, v12

    const/4 v10, 0x0

    aget-object v10, v11, v10

    iput v8, v10, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget-object v10, v11, v10

    iput v9, v10, Landroid/graphics/Point;->y:I

    const/4 v10, 0x1

    new-instance v12, Landroid/graphics/Point;

    iget v13, v7, Lcom/google/android/gms/internal/fe;->width:I

    add-int/2addr v13, v8

    invoke-direct {v12, v13, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v10

    const/4 v10, 0x2

    new-instance v12, Landroid/graphics/Point;

    iget v13, v7, Lcom/google/android/gms/internal/fe;->width:I

    add-int/2addr v13, v8

    iget v14, v7, Lcom/google/android/gms/internal/fe;->height:I

    add-int/2addr v14, v9

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v10

    const/4 v10, 0x3

    new-instance v12, Landroid/graphics/Point;

    iget v7, v7, Lcom/google/android/gms/internal/fe;->height:I

    add-int/2addr v7, v9

    invoke-direct {v12, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v10

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    aget-object v9, v11, v7

    iget v8, v9, Landroid/graphics/Point;->x:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v6, v9, Landroid/graphics/Point;->x:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v5, v9, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v4, v9, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    invoke-static {v6, v4, v5, v3, v2}, Lcom/google/android/gms/vision/text/TextBlock;->zza(IIIILcom/google/android/gms/internal/fe;)[Landroid/graphics/Point;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    goto/16 :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    iget-object v0, v6, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v6, v6, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/vision/text/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/vision/text/zza;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "und"

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNS:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbNQ:[Lcom/google/android/gms/internal/fk;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
