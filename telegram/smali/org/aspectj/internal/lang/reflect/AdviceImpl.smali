.class public Lorg/aspectj/internal/lang/reflect/AdviceImpl;
.super Ljava/lang/Object;
.source "AdviceImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/Advice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;
    }
.end annotation


# static fields
.field private static final AJC_INTERNAL:Ljava/lang/String; = "org.aspectj.runtime.internal"


# instance fields
.field private final adviceMethod:Ljava/lang/reflect/Method;

.field private exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

.field private genericParameterTypes:[Ljava/lang/reflect/Type;

.field private hasExtraParam:Z

.field private final kind:Lorg/aspectj/lang/reflect/AdviceKind;

.field private parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

.field private pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "pointcut"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/aspectj/lang/reflect/AdviceKind;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    .line 41
    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->kind:Lorg/aspectj/lang/reflect/AdviceKind;

    .line 42
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    .line 43
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "pointcut"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/aspectj/lang/reflect/AdviceKind;
    .param p4, "extraParamName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "exTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    new-array v2, v2, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v2, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "exTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    return-object v2
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 9

    .prologue
    .line 56
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    if-nez v7, :cond_3

    .line 57
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 58
    .local v1, "genTypes":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 59
    .local v5, "syntheticCount":I
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 60
    .local v6, "t":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_0

    .line 61
    check-cast v6, Ljava/lang/Class;

    .end local v6    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.aspectj.runtime.internal"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    array-length v7, v1

    sub-int/2addr v7, v5

    new-array v7, v7, [Ljava/lang/reflect/Type;

    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    .line 65
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 66
    aget-object v7, v1, v2

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_2

    .line 67
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v7, v1, v2

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v7

    aput-object v7, v8, v2

    .line 65
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_2
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v8, v1, v2

    aput-object v8, v7, v2

    goto :goto_2

    .line 73
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "genTypes":[Ljava/lang/reflect/Type;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "syntheticCount":I
    :cond_3
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    return-object v7
.end method

.method public getKind()Lorg/aspectj/lang/reflect/AdviceKind;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->kind:Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "adviceName":Ljava/lang/String;
    const-string/jumbo v2, "ajc$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string/jumbo v0, ""

    .line 110
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    const-class v3, Lorg/aspectj/lang/annotation/AdviceName;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/aspectj/lang/annotation/AdviceName;

    .line 111
    .local v1, "name":Lorg/aspectj/lang/annotation/AdviceName;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/aspectj/lang/annotation/AdviceName;->value()Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v1    # "name":Lorg/aspectj/lang/annotation/AdviceName;
    :cond_0
    return-object v0
.end method

.method public getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v7, :cond_2

    .line 78
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 79
    .local v5, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 80
    .local v6, "syntheticCount":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 81
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.aspectj.runtime.internal"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 80
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    array-length v7, v5

    sub-int/2addr v7, v6

    new-array v7, v7, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    .line 84
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 85
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v8, v5, v2

    invoke-static {v8}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v8

    aput-object v8, v7, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "syntheticCount":I
    :cond_2
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    return-object v7
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 121
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 123
    const-string/jumbo v5, "@AdviceName(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string/jumbo v5, "\") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    sget-object v6, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    if-ne v5, v6, :cond_1

    .line 128
    iget-object v5, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_1
    sget-object v5, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-virtual {v6}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 148
    :goto_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    .line 149
    .local v3, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v2, v3

    .line 150
    .local v2, "len":I
    iget-boolean v5, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 151
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 152
    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_3

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :pswitch_0
    const-string/jumbo v5, "after("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    :pswitch_1
    const-string/jumbo v5, "after("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    :pswitch_2
    const-string/jumbo v5, "after("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 142
    :pswitch_3
    const-string/jumbo v5, "around("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 145
    :pswitch_4
    const-string/jumbo v5, "before("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 155
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_4
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    sget-object v5, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-virtual {v6}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 173
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 174
    .local v0, "exTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v5, v0

    if-lez v5, :cond_9

    .line 175
    const-string/jumbo v5, "throws "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const/4 v1, 0x0

    :goto_3
    array-length v5, v0

    if-ge v1, v5, :cond_8

    .line 177
    aget-object v5, v0, v1

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v5, v1, 0x1

    array-length v6, v0

    if-ge v5, v6, :cond_6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    .end local v0    # "exTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :pswitch_5
    const-string/jumbo v5, "returning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-boolean v5, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v5, :cond_7

    .line 160
    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_7
    :pswitch_6
    const-string/jumbo v5, "throwing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-boolean v5, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v5, :cond_5

    .line 167
    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 180
    .restart local v0    # "exTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_8
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_9
    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v5

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
