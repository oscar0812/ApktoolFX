.class public interface abstract Lorg/aspectj/lang/JoinPoint;
.super Ljava/lang/Object;
.source "JoinPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/lang/JoinPoint$EnclosingStaticPart;,
        Lorg/aspectj/lang/JoinPoint$StaticPart;
    }
.end annotation


# static fields
.field public static final ADVICE_EXECUTION:Ljava/lang/String; = "adviceexecution"

.field public static final CONSTRUCTOR_CALL:Ljava/lang/String; = "constructor-call"

.field public static final CONSTRUCTOR_EXECUTION:Ljava/lang/String; = "constructor-execution"

.field public static final EXCEPTION_HANDLER:Ljava/lang/String; = "exception-handler"

.field public static final FIELD_GET:Ljava/lang/String; = "field-get"

.field public static final FIELD_SET:Ljava/lang/String; = "field-set"

.field public static final INITIALIZATION:Ljava/lang/String; = "initialization"

.field public static final METHOD_CALL:Ljava/lang/String; = "method-call"

.field public static final METHOD_EXECUTION:Ljava/lang/String; = "method-execution"

.field public static final PREINITIALIZATION:Ljava/lang/String; = "preinitialization"

.field public static final STATICINITIALIZATION:Ljava/lang/String; = "staticinitialization"

.field public static final SYNCHRONIZATION_LOCK:Ljava/lang/String; = "lock"

.field public static final SYNCHRONIZATION_UNLOCK:Ljava/lang/String; = "unlock"


# virtual methods
.method public abstract getArgs()[Ljava/lang/Object;
.end method

.method public abstract getKind()Ljava/lang/String;
.end method

.method public abstract getSignature()Lorg/aspectj/lang/Signature;
.end method

.method public abstract getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
.end method

.method public abstract getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract getThis()Ljava/lang/Object;
.end method

.method public abstract toLongString()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
