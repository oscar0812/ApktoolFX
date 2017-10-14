.class Lorg/telegram/ui/PrivacySettingsActivity$2$3$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2$3;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PrivacySettingsActivity$2$3;

    .prologue
    .line 312
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3$1;->this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 316
    return-void
.end method
