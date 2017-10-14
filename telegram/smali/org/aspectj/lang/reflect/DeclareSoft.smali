.class public interface abstract Lorg/aspectj/lang/reflect/DeclareSoft;
.super Ljava/lang/Object;
.source "DeclareSoft.java"


# virtual methods
.method public abstract getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
.end method

.method public abstract getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
.end method

.method public abstract getSoftenedExceptionType()Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
