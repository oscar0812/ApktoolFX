.class Lorg/telegram/messenger/ImageReceiver$SetImageBackup;
.super Ljava/lang/Object;
.source "ImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetImageBackup"
.end annotation


# instance fields
.field public cacheType:I

.field public ext:Ljava/lang/String;

.field public fileLocation:Lorg/telegram/tgnet/TLObject;

.field public filter:Ljava/lang/String;

.field public httpUrl:Ljava/lang/String;

.field public size:I

.field final synthetic this$0:Lorg/telegram/messenger/ImageReceiver;

.field public thumb:Landroid/graphics/drawable/Drawable;

.field public thumbFilter:Ljava/lang/String;

.field public thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->this$0:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "x1"    # Lorg/telegram/messenger/ImageReceiver$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
