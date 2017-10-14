.class public Lorg/aspectj/lang/NoAspectBoundException;
.super Ljava/lang/RuntimeException;
.source "NoAspectBoundException.java"


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "aspectName"    # Ljava/lang/String;
    .param p2, "inner"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    if-nez p2, :cond_0

    .end local p1    # "aspectName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lorg/aspectj/lang/NoAspectBoundException;->cause:Ljava/lang/Throwable;

    .line 27
    return-void

    .line 24
    .restart local p1    # "aspectName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Exception while initializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/aspectj/lang/NoAspectBoundException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
