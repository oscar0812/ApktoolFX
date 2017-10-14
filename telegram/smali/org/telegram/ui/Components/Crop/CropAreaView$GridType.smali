.class final enum Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
.super Ljava/lang/Enum;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Crop/CropAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GridType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field public static final enum MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field public static final enum MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field public static final enum NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const-string/jumbo v1, "MINOR"

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const-string/jumbo v1, "MAJOR"

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    return-object v0
.end method

.method public static values()[Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    return-object v0
.end method
