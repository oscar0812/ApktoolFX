.class public interface abstract Lorg/aspectj/lang/reflect/Advice;
.super Ljava/lang/Object;
.source "Advice.java"


# virtual methods
.method public abstract getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
.end method

.method public abstract getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getGenericParameterTypes()[Ljava/lang/reflect/Type;
.end method

.method public abstract getKind()Lorg/aspectj/lang/reflect/AdviceKind;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
.end method
