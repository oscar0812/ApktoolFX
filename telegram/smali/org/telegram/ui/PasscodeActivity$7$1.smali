.class Lorg/telegram/ui/PasscodeActivity$7$1;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PasscodeActivity$7;

    .prologue
    .line 343
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7$1;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x5

    const v5, 0x7f0700bd

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 346
    if-nez p1, :cond_0

    .line 347
    const-string/jumbo v0, "AutoLockDisabled"

    const v1, 0x7f0700bc

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 348
    :cond_0
    if-ne p1, v3, :cond_1

    .line 349
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Minutes"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 351
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Minutes"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 353
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Hours"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 355
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Hours"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method
