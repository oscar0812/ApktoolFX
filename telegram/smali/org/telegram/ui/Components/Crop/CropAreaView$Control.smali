.class final enum Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
.super Ljava/lang/Enum;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Crop/CropAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/telegram/ui/Components/Crop/CropAreaView$Control;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "TOP_LEFT"

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string/jumbo v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v1, v0, v3

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v1, v0, v4

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v1, v0, v5

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v1, v0, v6

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    return-object v0
.end method

.method public static values()[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    return-object v0
.end method
