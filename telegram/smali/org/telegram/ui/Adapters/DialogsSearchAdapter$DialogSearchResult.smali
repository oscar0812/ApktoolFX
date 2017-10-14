.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSearchResult"
.end annotation


# instance fields
.field public date:I

.field public name:Ljava/lang/CharSequence;

.field public object:Lorg/telegram/tgnet/TLObject;

.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p2, "x1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    return-void
.end method
