.class public interface abstract annotation Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;
.super Ljava/lang/Object;
.source "ajcDeclareEoW.java"

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
.method public abstract isError()Z
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract pointcut()Ljava/lang/String;
.end method
