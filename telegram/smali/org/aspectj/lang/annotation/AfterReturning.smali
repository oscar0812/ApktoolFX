.class public interface abstract annotation Lorg/aspectj/lang/annotation/AfterReturning;
.super Ljava/lang/Object;
.source "AfterReturning.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/aspectj/lang/annotation/AfterReturning;
        argNames = ""
        pointcut = ""
        returning = ""
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract argNames()Ljava/lang/String;
.end method

.method public abstract pointcut()Ljava/lang/String;
.end method

.method public abstract returning()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method
