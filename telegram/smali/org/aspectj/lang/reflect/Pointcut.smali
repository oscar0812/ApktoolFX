.class public interface abstract Lorg/aspectj/lang/reflect/Pointcut;
.super Ljava/lang/Object;
.source "Pointcut.java"


# virtual methods
.method public abstract getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterNames()[Ljava/lang/String;
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
