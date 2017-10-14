.class public interface abstract Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoViewerProvider"
.end annotation


# virtual methods
.method public abstract allowCaption()Z
.end method

.method public abstract cancelButtonPressed()Z
.end method

.method public abstract getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
.end method

.method public abstract getSelectedCount()I
.end method

.method public abstract getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
.end method

.method public abstract isPhotoChecked(I)Z
.end method

.method public abstract scaleToFill()Z
.end method

.method public abstract sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
.end method

.method public abstract setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)V
.end method

.method public abstract updatePhotoAtIndex(I)V
.end method

.method public abstract willHidePhotoViewer()V
.end method

.method public abstract willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
.end method
