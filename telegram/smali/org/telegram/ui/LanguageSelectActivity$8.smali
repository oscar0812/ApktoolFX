.class Lorg/telegram/ui/LanguageSelectActivity$8;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 283
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->val$query:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "q":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 285
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    .line 299
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 289
    .local v4, "time":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/LocaleController$LocaleInfo;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v6}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 292
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v6}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 293
    .local v1, "c":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v6, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v1    # "c":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity$8;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v6, v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
