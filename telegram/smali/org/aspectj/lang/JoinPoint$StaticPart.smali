.class public interface abstract Lorg/aspectj/lang/JoinPoint$StaticPart;
.super Ljava/lang/Object;
.source "JoinPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/lang/JoinPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StaticPart"
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getKind()Ljava/lang/String;
.end method

.method public abstract getSignature()Lorg/aspectj/lang/Signature;
.end method

.method public abstract getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
.end method

.method public abstract toLongString()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
