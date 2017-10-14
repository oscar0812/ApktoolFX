.class public Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecentSearchObject"
.end annotation


# instance fields
.field date:I

.field did:J

.field object:Lorg/telegram/tgnet/TLObject;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
