.class Lorg/telegram/ui/LaunchActivity$24;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$cells:[Lorg/telegram/ui/Cells/LanguageCell;

.field final synthetic val$selectedLanguage:[Lorg/telegram/messenger/LocaleController$LocaleInfo;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;[Lorg/telegram/messenger/LocaleController$LocaleInfo;[Lorg/telegram/ui/Cells/LanguageCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2299
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$24;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$24;->val$selectedLanguage:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$24;->val$cells:[Lorg/telegram/ui/Cells/LanguageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2302
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2303
    .local v1, "tag":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$24;->val$selectedLanguage:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    check-cast p1, Lorg/telegram/ui/Cells/LanguageCell;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/LanguageCell;->getCurrentLocale()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2304
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$24;->val$cells:[Lorg/telegram/ui/Cells/LanguageCell;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2305
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$24;->val$cells:[Lorg/telegram/ui/Cells/LanguageCell;

    aget-object v4, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguageSelected(Z)V

    .line 2304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2305
    goto :goto_1

    .line 2307
    :cond_1
    return-void
.end method
