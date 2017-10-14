.class public Lorg/aspectj/internal/lang/reflect/PointcutImpl;
.super Ljava/lang/Object;
.source "PointcutImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/Pointcut;


# instance fields
.field private final baseMethod:Ljava/lang/reflect/Method;

.field private final declaringType:Lorg/aspectj/lang/reflect/AjType;

.field private final name:Ljava/lang/String;

.field private parameterNames:[Ljava/lang/String;

.field private final pc:Lorg/aspectj/lang/reflect/PointcutExpression;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pc"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "declaringType"    # Lorg/aspectj/lang/reflect/AjType;
    .param p5, "pNames"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->name:Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->pc:Lorg/aspectj/lang/reflect/PointcutExpression;

    .line 37
    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->baseMethod:Ljava/lang/reflect/Method;

    .line 38
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 39
    invoke-direct {p0, p5}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->splitOnComma(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private splitOnComma(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v2, "strTok":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 77
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 78
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->baseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->baseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "baseParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    new-array v0, v3, [Lorg/aspectj/lang/reflect/AjType;

    .line 60
    .local v0, "ajParamTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 61
    aget-object v3, v1, v2

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v0, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->pc:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    .line 88
    .local v1, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 89
    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 91
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->parameterNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v3

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
