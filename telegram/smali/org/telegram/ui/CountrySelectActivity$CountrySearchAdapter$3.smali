.class Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

.field final synthetic val$arrCounties:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    .prologue
    .line 420
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;->val$arrCounties:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;->val$arrCounties:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1202(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$3;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->notifyDataSetChanged()V

    .line 425
    return-void
.end method
