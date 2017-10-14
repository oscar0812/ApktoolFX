.class public interface abstract annotation Lorg/aspectj/lang/annotation/SuppressAjWarnings;
.super Ljava/lang/Object;
.source "SuppressAjWarnings.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/aspectj/lang/annotation/SuppressAjWarnings;
        value = {
            ""
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
