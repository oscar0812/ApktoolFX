.class Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;
.super Ljava/lang/Object;
.source "DrawerLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public icon:I

.field public id:I

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "icon"    # I

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->this$0:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p4, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    .line 139
    iput p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    .line 140
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V
    .locals 2
    .param p1, "actionCell"    # Lorg/telegram/ui/Cells/DrawerActionCell;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DrawerActionCell;->setTextAndIcon(Ljava/lang/String;I)V

    .line 145
    return-void
.end method
