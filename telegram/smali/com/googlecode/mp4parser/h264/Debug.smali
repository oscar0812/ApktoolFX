.class public Lcom/googlecode/mp4parser/h264/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(I)V
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 77
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public static print([S)V
    .locals 9
    .param p0, "table"    # [S

    .prologue
    const/16 v8, 0x8

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 66
    return-void

    .line 60
    :cond_0
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 64
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "%3d, "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-short v7, p0, v0

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final print8x8(Ljava/nio/ShortBuffer;)V
    .locals 8
    .param p0, "output"    # Ljava/nio/ShortBuffer;

    .prologue
    const/16 v7, 0x8

    .line 49
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 55
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 53
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "%3d, "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final print8x8([I)V
    .locals 9
    .param p0, "output"    # [I

    .prologue
    const/16 v8, 0x8

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 35
    return-void

    .line 29
    :cond_0
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 33
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "%3d, "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, p0, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final print8x8([S)V
    .locals 9
    .param p0, "output"    # [S

    .prologue
    const/16 v8, 0x8

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 46
    return-void

    .line 40
    :cond_0
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "%3d, "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-short v7, p0, v0

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static println(Ljava/lang/String;)V
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    return-void
.end method
