.class Lorg/aspectj/runtime/reflect/SourceLocationImpl;
.super Ljava/lang/Object;
.source "SourceLocationImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/SourceLocation;


# instance fields
.field fileName:Ljava/lang/String;

.field line:I

.field withinType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0
    .param p1, "withinType"    # Ljava/lang/Class;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "line"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->withinType:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->fileName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->line:I

    .line 28
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->line:I

    return v0
.end method

.method public getWithinType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->withinType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
