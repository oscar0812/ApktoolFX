.class final Lcom/google/android/gms/internal/zzbfi;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final zzaGB:Lcom/google/android/gms/internal/zzbfi;

.field private static final zzaGC:Lcom/google/android/gms/internal/zzbfj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbfi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbfi;->zzaGB:Lcom/google/android/gms/internal/zzbfi;

    new-instance v0, Lcom/google/android/gms/internal/zzbfj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbfj;-><init>(Lcom/google/android/gms/internal/zzbfh;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbfi;->zzaGC:Lcom/google/android/gms/internal/zzbfj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zzqX()Lcom/google/android/gms/internal/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbfi;->zzaGB:Lcom/google/android/gms/internal/zzbfi;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbfi;->zzaGC:Lcom/google/android/gms/internal/zzbfj;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
