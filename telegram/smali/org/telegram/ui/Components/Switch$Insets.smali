.class public Lorg/telegram/ui/Components/Switch$Insets;
.super Ljava/lang/Object;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Insets"
.end annotation


# static fields
.field public static final NONE:Lorg/telegram/ui/Components/Switch$Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    .line 43
    new-instance v0, Lorg/telegram/ui/Components/Switch$Insets;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/telegram/ui/Components/Switch$Insets;-><init>(IIII)V

    sput-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    .line 52
    iput p2, p0, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    .line 53
    iput p3, p0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    .line 54
    iput p4, p0, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    .line 55
    return-void
.end method
