.class public Lorg/telegram/messenger/exoplayer2/source/UnrecognizedInputFormatException;
.super Lorg/telegram/messenger/exoplayer2/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    .line 38
    return-void
.end method
