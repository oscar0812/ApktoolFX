.class public interface abstract annotation Lorg/aspectj/internal/lang/annotation/ajcITD;
.super Ljava/lang/Object;
.source "ajcITD.java"

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
.method public abstract modifiers()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract targetType()Ljava/lang/String;
.end method
