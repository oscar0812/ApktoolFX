.class public Lorg/telegram/ui/LocationActivity$LiveLocation;
.super Ljava/lang/Object;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveLocation"
.end annotation


# instance fields
.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public id:I

.field public marker:Lcom/google/android/gms/maps/model/Marker;

.field public object:Lorg/telegram/tgnet/TLRPC$Message;

.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$LiveLocation;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
