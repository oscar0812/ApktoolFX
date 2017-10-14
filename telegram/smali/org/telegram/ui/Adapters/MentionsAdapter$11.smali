.class Lorg/telegram/ui/Adapters/MentionsAdapter$11;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/EmojiSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 904
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$11;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 904
    check-cast p1, Lorg/telegram/messenger/EmojiSuggestion;

    check-cast p2, Lorg/telegram/messenger/EmojiSuggestion;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$11;->compare(Lorg/telegram/messenger/EmojiSuggestion;Lorg/telegram/messenger/EmojiSuggestion;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/EmojiSuggestion;Lorg/telegram/messenger/EmojiSuggestion;)I
    .locals 5
    .param p1, "o1"    # Lorg/telegram/messenger/EmojiSuggestion;
    .param p2, "o2"    # Lorg/telegram/messenger/EmojiSuggestion;

    .prologue
    const/4 v4, 0x0

    .line 907
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/EmojiSuggestion;->emoji:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 908
    .local v0, "n1":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 909
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 911
    :cond_0
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    iget-object v3, p2, Lorg/telegram/messenger/EmojiSuggestion;->emoji:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 912
    .local v1, "n2":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 913
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 915
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method
