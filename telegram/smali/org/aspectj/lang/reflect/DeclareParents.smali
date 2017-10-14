.class public interface abstract Lorg/aspectj/lang/reflect/DeclareParents;
.super Ljava/lang/Object;
.source "DeclareParents.java"


# virtual methods
.method public abstract getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
.end method

.method public abstract getParentTypes()[Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getTargetTypesPattern()Lorg/aspectj/lang/reflect/TypePattern;
.end method

.method public abstract isExtends()Z
.end method

.method public abstract isImplements()Z
.end method
