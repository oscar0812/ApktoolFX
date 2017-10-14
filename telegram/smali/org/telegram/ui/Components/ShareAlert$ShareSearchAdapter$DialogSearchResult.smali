.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
.super Ljava/lang/Object;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSearchResult"
.end annotation


# instance fields
.field public date:I

.field public dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field public name:Ljava/lang/CharSequence;

.field public object:Lorg/telegram/tgnet/TLObject;

.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)V
    .locals 1

    .prologue
    .line 640
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p2, "x1"    # Lorg/telegram/ui/Components/ShareAlert$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)V

    return-void
.end method
