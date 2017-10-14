.class public final enum Lorg/aspectj/lang/reflect/PerClauseKind;
.super Ljava/lang/Enum;
.source "PerClauseKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/aspectj/lang/reflect/PerClauseKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

.field public static final enum SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "SINGLETON"

    invoke-direct {v0, v1, v3}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 20
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "PERTHIS"

    invoke-direct {v0, v1, v4}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 21
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "PERTARGET"

    invoke-direct {v0, v1, v5}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 22
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "PERCFLOW"

    invoke-direct {v0, v1, v6}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 23
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "PERCFLOWBELOW"

    invoke-direct {v0, v1, v7}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 24
    new-instance v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v1, "PERTYPEWITHIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/reflect/PerClauseKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/aspectj/lang/reflect/PerClauseKind;

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v1, v0, v3

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v1, v0, v4

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v1, v0, v5

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v1, v0, v6

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    aput-object v2, v0, v1

    sput-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->$VALUES:[Lorg/aspectj/lang/reflect/PerClauseKind;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/aspectj/lang/reflect/PerClauseKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/PerClauseKind;

    return-object v0
.end method

.method public static values()[Lorg/aspectj/lang/reflect/PerClauseKind;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/aspectj/lang/reflect/PerClauseKind;->$VALUES:[Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-virtual {v0}, [Lorg/aspectj/lang/reflect/PerClauseKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/aspectj/lang/reflect/PerClauseKind;

    return-object v0
.end method
