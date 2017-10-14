.class Lorg/telegram/ui/LanguageSelectActivity$6;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V
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
        "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;

.field final synthetic val$currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->val$currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 230
    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    check-cast p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity$6;->compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 2
    .param p1, "o"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "o2"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->val$currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne p1, v0, :cond_0

    .line 234
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$6;->val$currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne p2, v0, :cond_1

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
