.class public interface abstract annotation Lorg/aspectj/lang/annotation/control/CodeGenerationHint;
.super Ljava/lang/Object;
.source "CodeGenerationHint.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/aspectj/lang/annotation/control/CodeGenerationHint;
        ifNameSuffix = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract ifNameSuffix()Ljava/lang/String;
.end method
