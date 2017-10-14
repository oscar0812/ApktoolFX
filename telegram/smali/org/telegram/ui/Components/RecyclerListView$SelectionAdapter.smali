.class public abstract Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectionAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
.end method
