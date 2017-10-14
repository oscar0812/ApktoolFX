.class public Lorg/telegram/messenger/EmojiSuggestion;
.super Ljava/lang/Object;
.source "EmojiSuggestion.java"


# instance fields
.field public emoji:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/telegram/messenger/EmojiSuggestion;->emoji:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/telegram/messenger/EmojiSuggestion;->label:Ljava/lang/String;

    .line 16
    return-void
.end method
