.class public Lorg/aspectj/runtime/internal/CFlowCounter;
.super Ljava/lang/Object;
.source "CFlowCounter.java"


# static fields
.field private static tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->selectFactoryForVMVersion()V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    .line 34
    return-void
.end method

.method private static getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aPropertyName"    # Ljava/lang/String;
    .param p1, "aDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 79
    .end local p1    # "aDefaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 78
    .restart local p1    # "aDefaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    return-object v0
.end method

.method private static getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    return-object v0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectFactoryForVMVersion()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    const-string/jumbo v5, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string/jumbo v6, "unspecified"

    invoke-static {v5, v6}, Lorg/aspectj/runtime/internal/CFlowCounter;->getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "override":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "useThreadLocalImplementation":Z
    const-string/jumbo v5, "unspecified"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const-string/jumbo v5, "java.class.version"

    const-string/jumbo v6, "0.0"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "v":Ljava/lang/String;
    const-string/jumbo v5, "46.0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v1, v3

    .line 66
    .end local v2    # "v":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 67
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    .line 71
    :goto_1
    return-void

    .restart local v2    # "v":Ljava/lang/String;
    :cond_0
    move v1, v4

    .line 61
    goto :goto_0

    .line 63
    .end local v2    # "v":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_2

    .line 69
    :cond_4
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_1
.end method


# virtual methods
.method public dec()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->dec()V

    .line 42
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->removeThreadCounter()V

    .line 45
    :cond_0
    return-void
.end method

.method public inc()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->inc()V

    .line 38
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    return v0
.end method
