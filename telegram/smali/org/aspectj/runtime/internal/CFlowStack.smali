.class public Lorg/aspectj/runtime/internal/CFlowStack;
.super Ljava/lang/Object;
.source "CFlowStack.java"


# static fields
.field private static tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->selectFactoryForVMVersion()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadStack()Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    .line 64
    return-void
.end method

.method private static getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aPropertyName"    # Ljava/lang/String;
    .param p1, "aDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 150
    .end local p1    # "aDefaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 149
    .restart local p1    # "aDefaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    return-object v0
.end method

.method private static getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    return-object v0
.end method

.method private getThreadStack()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

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

    .line 128
    const-string/jumbo v5, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string/jumbo v6, "unspecified"

    invoke-static {v5, v6}, Lorg/aspectj/runtime/internal/CFlowStack;->getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "override":Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, "useThreadLocalImplementation":Z
    const-string/jumbo v5, "unspecified"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    const-string/jumbo v5, "java.class.version"

    const-string/jumbo v6, "0.0"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "v":Ljava/lang/String;
    const-string/jumbo v5, "46.0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v1, v3

    .line 138
    .end local v2    # "v":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 139
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    .line 143
    :goto_1
    return-void

    .restart local v2    # "v":Ljava/lang/String;
    :cond_0
    move v1, v4

    .line 133
    goto :goto_0

    .line 135
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

    .line 141
    :cond_4
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowStack;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->peekCFlow()Lorg/aspectj/runtime/CFlow;

    move-result-object v0

    .line 99
    .local v0, "cf":Lorg/aspectj/runtime/CFlow;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/CFlow;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 93
    .local v0, "stack":Ljava/util/Stack;
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v1}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public peekCFlow()Lorg/aspectj/runtime/CFlow;
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 110
    .local v0, "stack":Ljava/util/Stack;
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/aspectj/runtime/CFlow;

    goto :goto_0
.end method

.method public peekInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->peekCFlow()Lorg/aspectj/runtime/CFlow;

    move-result-object v0

    .line 104
    .local v0, "cf":Lorg/aspectj/runtime/CFlow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/aspectj/runtime/CFlow;->getAspect()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v1}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v1
.end method

.method public peekTopCFlow()Lorg/aspectj/runtime/CFlow;
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 116
    .local v0, "stack":Ljava/util/Stack;
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/aspectj/runtime/CFlow;

    goto :goto_0
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    .line 85
    .local v0, "s":Ljava/util/Stack;
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/aspectj/runtime/internal/CFlowStack;->stackProxy:Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;

    invoke-interface {v1}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;->removeThreadStack()V

    .line 89
    :cond_0
    return-void
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public push([Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lorg/aspectj/runtime/internal/CFlowPlusState;

    invoke-direct {v1, p1}, Lorg/aspectj/runtime/internal/CFlowPlusState;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public pushInstance(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/CFlowStack;->getThreadStack()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lorg/aspectj/runtime/CFlow;

    invoke-direct {v1, p1}, Lorg/aspectj/runtime/CFlow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
