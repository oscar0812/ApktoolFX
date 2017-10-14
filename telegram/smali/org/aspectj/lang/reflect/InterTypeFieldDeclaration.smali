.class public interface abstract Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
.super Ljava/lang/Object;
.source "InterTypeFieldDeclaration.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeDeclaration;


# virtual methods
.method public abstract getGenericType()Ljava/lang/reflect/Type;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method
