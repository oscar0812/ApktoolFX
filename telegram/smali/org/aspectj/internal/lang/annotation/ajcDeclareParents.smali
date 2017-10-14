.class public interface abstract annotation Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
.super Ljava/lang/Object;
.source "ajcDeclareParents.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract isExtends()Z
.end method

.method public abstract parentTypes()Ljava/lang/String;
.end method

.method public abstract targetTypePattern()Ljava/lang/String;
.end method
