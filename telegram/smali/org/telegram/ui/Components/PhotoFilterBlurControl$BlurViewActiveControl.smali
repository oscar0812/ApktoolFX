.class final enum Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;
.super Ljava/lang/Enum;
.source "PhotoFilterBlurControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterBlurControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BlurViewActiveControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field public static final enum BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlNone"

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 35
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlCenter"

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 36
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlInnerRadius"

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 37
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlOuterRadius"

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 38
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlWholeArea"

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 39
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const-string/jumbo v1, "BlurViewActiveControlRotation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v1, v0, v3

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v1, v0, v4

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v1, v0, v5

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v1, v0, v6

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->$VALUES:[Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    return-object v0
.end method

.method public static values()[Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->$VALUES:[Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    return-object v0
.end method
