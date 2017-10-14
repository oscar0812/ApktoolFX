.class Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryEntry"
.end annotation


# instance fields
.field dir:Ljava/io/File;

.field scrollItem:I

.field scrollOffset:I

.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p2, "x1"    # Lorg/telegram/ui/DocumentSelectActivity$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    return-void
.end method
