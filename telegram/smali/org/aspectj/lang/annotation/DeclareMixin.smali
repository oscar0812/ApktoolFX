.class public interface abstract annotation Lorg/aspectj/lang/annotation/DeclareMixin;
.super Ljava/lang/Object;
.source "DeclareMixin.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/aspectj/lang/annotation/DeclareMixin;
        interfaces = {
            Ljava/lang/Object;
        }
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
.method public abstract interfaces()[Ljava/lang/Class;
.end method

.method public abstract value()Ljava/lang/String;
.end method
