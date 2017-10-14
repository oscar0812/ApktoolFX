.class public interface abstract Lorg/aspectj/lang/ProceedingJoinPoint;
.super Ljava/lang/Object;
.source "ProceedingJoinPoint.java"

# interfaces
.implements Lorg/aspectj/lang/JoinPoint;


# virtual methods
.method public abstract proceed()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract proceed([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract set$AroundClosure(Lorg/aspectj/runtime/internal/AroundClosure;)V
.end method
