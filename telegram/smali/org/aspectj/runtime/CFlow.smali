.class public Lorg/aspectj/runtime/CFlow;
.super Ljava/lang/Object;
.source "CFlow.java"


# instance fields
.field private _aspect:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/aspectj/runtime/CFlow;-><init>(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_aspect"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/aspectj/runtime/CFlow;->_aspect:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAspect()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/aspectj/runtime/CFlow;->_aspect:Ljava/lang/Object;

    return-object v0
.end method

.method public setAspect(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_aspect"    # Ljava/lang/Object;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/aspectj/runtime/CFlow;->_aspect:Ljava/lang/Object;

    .line 34
    return-void
.end method
