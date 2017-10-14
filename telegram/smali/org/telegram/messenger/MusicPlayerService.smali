.class public Lorg/telegram/messenger/MusicPlayerService;
.super Landroid/app/Service;
.source "MusicPlayerService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final ID_NOTIFICATION:I = 0x5

.field public static final NOTIFY_CLOSE:Ljava/lang/String; = "org.telegram.android.musicplayer.close"

.field public static final NOTIFY_NEXT:Ljava/lang/String; = "org.telegram.android.musicplayer.next"

.field public static final NOTIFY_PAUSE:Ljava/lang/String; = "org.telegram.android.musicplayer.pause"

.field public static final NOTIFY_PLAY:Ljava/lang/String; = "org.telegram.android.musicplayer.play"

.field public static final NOTIFY_PREVIOUS:Ljava/lang/String; = "org.telegram.android.musicplayer.previous"

.field private static supportBigNotifications:Z

.field private static supportLockScreenControls:Z


# instance fields
.field private albumArtPlaceholder:Landroid/graphics/Bitmap;

.field private audioManager:Landroid/media/AudioManager;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private playbackState:Landroid/media/session/PlaybackState$Builder;

.field private remoteControlClient:Landroid/media/RemoteControlClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotification(Lorg/telegram/messenger/MessageObject;)V
    .locals 34
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v25

    .line 152
    .local v25, "songName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "authorName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v7

    .line 155
    .local v7, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    new-instance v14, Landroid/content/Intent;

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v27, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v26, "com.tmessages.openplayer"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const v26, 0x8000

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 162
    .local v10, "contentIntent":Landroid/app/PendingIntent;
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x15

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_e

    .line 164
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 165
    .local v6, "albumArt":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 166
    .local v13, "fullAlbumArt":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v26

    if-nez v26, :cond_4

    const/4 v15, 0x1

    .line 168
    .local v15, "isPlaying":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x0

    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v29, "org.telegram.android.musicplayer.previous"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v29, Landroid/content/ComponentName;

    const-class v30, Lorg/telegram/messenger/MusicPlayerReceiver;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v28

    const/high16 v29, 0x10000000

    invoke-static/range {v26 .. v29}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 170
    .local v22, "pendingPrev":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x0

    new-instance v28, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ".STOP_PLAYER"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    const/high16 v29, 0x10000000

    invoke-static/range {v26 .. v29}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 171
    .local v23, "pendingStop":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    new-instance v29, Landroid/content/Intent;

    if-eqz v15, :cond_5

    const-string/jumbo v26, "org.telegram.android.musicplayer.pause"

    :goto_3
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v26, Landroid/content/ComponentName;

    const-class v30, Lorg/telegram/messenger/MusicPlayerReceiver;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v26

    const/high16 v29, 0x10000000

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 172
    .local v21, "pendingPlaypause":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x0

    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v29, "org.telegram.android.musicplayer.next"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v29, Landroid/content/ComponentName;

    const-class v30, Lorg/telegram/messenger/MusicPlayerReceiver;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v28

    const/high16 v29, 0x10000000

    invoke-static/range {v26 .. v29}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 174
    .local v20, "pendingNext":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v9, "bldr":Landroid/app/Notification$Builder;
    const v26, 0x7f020180

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v26

    .line 176
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v26

    .line 177
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    .line 178
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v27

    if-eqz v7, :cond_6

    .line 179
    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v26

    :goto_4
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    .line 180
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v26

    .line 181
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v26

    const/16 v27, 0x0

    .line 182
    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v26

    const-string/jumbo v27, "transport"

    .line 183
    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v26

    const/16 v27, 0x2

    .line 184
    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v26

    new-instance v27, Landroid/app/Notification$MediaStyle;

    invoke-direct/range {v27 .. v27}, Landroid/app/Notification$MediaStyle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    move-object/from16 v28, v0

    .line 186
    invoke-virtual/range {v28 .. v28}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v27

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 187
    invoke-virtual/range {v27 .. v28}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v27

    .line 185
    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 188
    if-eqz v6, :cond_7

    .line 189
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 194
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    const-wide/16 v28, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-virtual/range {v26 .. v30}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v26

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 196
    new-instance v26, Landroid/app/Notification$Action$Builder;

    const v27, 0x7f0200a2

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v26 .. v26}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v26

    new-instance v27, Landroid/app/Notification$Action$Builder;

    const v28, 0x7f02010d

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 197
    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v26

    new-instance v27, Landroid/app/Notification$Action$Builder;

    const v28, 0x7f02009f

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 198
    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 209
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 210
    new-instance v26, Landroid/media/MediaMetadata$Builder;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string/jumbo v27, "android.media.metadata.ALBUM_ART"

    .line 211
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object v26

    const-string/jumbo v27, "android.media.metadata.ALBUM_ARTIST"

    .line 212
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v26

    const-string/jumbo v27, "android.media.metadata.TITLE"

    .line 213
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v27

    const-string/jumbo v28, "android.media.metadata.ALBUM"

    if-eqz v7, :cond_c

    .line 214
    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v26

    :goto_7
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v16

    .line 216
    .local v16, "meta":Landroid/media/MediaMetadata$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 218
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 220
    .local v19, "notification":Landroid/app/Notification;
    if-eqz v15, :cond_d

    .line 221
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MusicPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 314
    .end local v9    # "bldr":Landroid/app/Notification$Builder;
    .end local v13    # "fullAlbumArt":Landroid/graphics/Bitmap;
    .end local v15    # "isPlaying":Z
    .end local v16    # "meta":Landroid/media/MediaMetadata$Builder;
    .end local v20    # "pendingNext":Landroid/app/PendingIntent;
    .end local v21    # "pendingPlaypause":Landroid/app/PendingIntent;
    .end local v22    # "pendingPrev":Landroid/app/PendingIntent;
    .end local v23    # "pendingStop":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v17

    .line 316
    .local v17, "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 317
    const/16 v26, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 318
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 320
    const/16 v26, 0x64

    :try_start_0
    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_9
    invoke-virtual/range {v17 .. v17}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 327
    .end local v17    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_1
    return-void

    .line 164
    .end local v6    # "albumArt":Landroid/graphics/Bitmap;
    .end local v19    # "notification":Landroid/app/Notification;
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v6    # "albumArt":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 166
    .restart local v13    # "fullAlbumArt":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 171
    .restart local v15    # "isPlaying":Z
    .restart local v22    # "pendingPrev":Landroid/app/PendingIntent;
    .restart local v23    # "pendingStop":Landroid/app/PendingIntent;
    :cond_5
    const-string/jumbo v26, "org.telegram.android.musicplayer.play"

    goto/16 :goto_3

    .line 179
    .restart local v9    # "bldr":Landroid/app/Notification$Builder;
    .restart local v20    # "pendingNext":Landroid/app/PendingIntent;
    .restart local v21    # "pendingPlaypause":Landroid/app/PendingIntent;
    :cond_6
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 191
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 200
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v28, v0

    if-eqz v15, :cond_9

    const/16 v26, 0x3

    .line 201
    :goto_a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    if-eqz v15, :cond_a

    const/high16 v27, 0x3f800000    # 1.0f

    .line 200
    :goto_b
    move-object/from16 v0, v28

    move/from16 v1, v26

    move-wide/from16 v2, v30

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v26

    const-wide/16 v28, 0x236

    .line 203
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 204
    new-instance v26, Landroid/app/Notification$Action$Builder;

    const v27, 0x7f0200a2

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v26 .. v26}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v27

    new-instance v28, Landroid/app/Notification$Action$Builder;

    if-eqz v15, :cond_b

    const v26, 0x7f0200a0

    :goto_c
    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move-object/from16 v2, v29

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 205
    invoke-virtual/range {v28 .. v28}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v26

    new-instance v27, Landroid/app/Notification$Action$Builder;

    const v28, 0x7f02009f

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 206
    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto/16 :goto_6

    .line 200
    :cond_9
    const/16 v26, 0x2

    goto/16 :goto_a

    .line 201
    :cond_a
    const/16 v27, 0x0

    goto :goto_b

    .line 204
    :cond_b
    const v26, 0x7f0200a1

    goto :goto_c

    .line 214
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 223
    .restart local v16    # "meta":Landroid/media/MediaMetadata$Builder;
    .restart local v19    # "notification":Landroid/app/Notification;
    :cond_d
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicPlayerService;->stopForeground(Z)V

    .line 224
    const-string/jumbo v26, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 225
    .local v18, "nm":Landroid/app/NotificationManager;
    const/16 v26, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_8

    .line 229
    .end local v6    # "albumArt":Landroid/graphics/Bitmap;
    .end local v9    # "bldr":Landroid/app/Notification$Builder;
    .end local v13    # "fullAlbumArt":Landroid/graphics/Bitmap;
    .end local v15    # "isPlaying":Z
    .end local v16    # "meta":Landroid/media/MediaMetadata$Builder;
    .end local v18    # "nm":Landroid/app/NotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v20    # "pendingNext":Landroid/app/PendingIntent;
    .end local v21    # "pendingPlaypause":Landroid/app/PendingIntent;
    .end local v22    # "pendingPrev":Landroid/app/PendingIntent;
    .end local v23    # "pendingStop":Landroid/app/PendingIntent;
    :cond_e
    new-instance v24, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const v27, 0x7f030007

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 230
    .local v24, "simpleContentView":Landroid/widget/RemoteViews;
    const/4 v12, 0x0

    .line 231
    .local v12, "expandedView":Landroid/widget/RemoteViews;
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_f

    .line 232
    new-instance v12, Landroid/widget/RemoteViews;

    .end local v12    # "expandedView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const v27, 0x7f030006

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v12, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 235
    .restart local v12    # "expandedView":Landroid/widget/RemoteViews;
    :cond_f
    new-instance v26, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v27, 0x7f020180

    .line 236
    invoke-virtual/range {v26 .. v27}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v26

    .line 237
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v26

    .line 238
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 240
    .restart local v19    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 241
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_10

    .line 242
    move-object/from16 v0, v19

    iput-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 245
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    .line 246
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_11

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    .line 250
    :cond_11
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    .restart local v6    # "albumArt":Landroid/graphics/Bitmap;
    :goto_d
    if-eqz v6, :cond_16

    .line 252
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0049

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 253
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_12

    .line 254
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0049

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 262
    :cond_12
    :goto_e
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 263
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 264
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0052

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004f

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004e

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_13

    .line 269
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 270
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 271
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0052

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004f

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004e

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 302
    :cond_13
    :goto_f
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004a

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 303
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004c

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 304
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_14

    .line 305
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004a

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004c

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 307
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    const v28, 0x7f0c004d

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1a

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v26

    :goto_10
    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 309
    :cond_14
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 310
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MusicPlayerService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_8

    .line 250
    .end local v6    # "albumArt":Landroid/graphics/Bitmap;
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 257
    .restart local v6    # "albumArt":Landroid/graphics/Bitmap;
    :cond_16
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0049

    const v28, 0x7f02014e

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 258
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_12

    .line 259
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0049

    const v28, 0x7f02014d

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_e

    .line 276
    :cond_17
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004e

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 277
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0052

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004f

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 279
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_18

    .line 280
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0052

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004f

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 282
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c004e

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 285
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v26

    if-eqz v26, :cond_19

    .line 286
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 287
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 288
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_13

    .line 289
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_f

    .line 293
    :cond_19
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 294
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 295
    sget-boolean v26, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v26, :cond_13

    .line 296
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0050

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 297
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    const v27, 0x7f0c0051

    const/16 v28, 0x8

    invoke-virtual/range {v26 .. v28}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_f

    .line 307
    :cond_1a
    const-string/jumbo v26, ""

    goto/16 :goto_10

    .line 321
    .end local v12    # "expandedView":Landroid/widget/RemoteViews;
    .end local v24    # "simpleContentView":Landroid/widget/RemoteViews;
    .restart local v17    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :catch_0
    move-exception v11

    .line 322
    .local v11, "e":Ljava/lang/Throwable;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 186
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 361
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, v1, :cond_0

    .line 362
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 363
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1

    .line 364
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;)V

    .line 369
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    :goto_0
    return-void

    .line 366
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->stopSelf()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42cc0000    # 102.0f

    .line 64
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MusicPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    .line 65
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 66
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 69
    new-instance v1, Landroid/media/session/MediaSession;

    const-string/jumbo v2, "telegramAudioPlayer"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    .line 70
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    .line 71
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, "placeholder":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v2, Lorg/telegram/messenger/MusicPlayerService$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MusicPlayerService$1;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 101
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 104
    .end local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 346
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 348
    .local v0, "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->clear()V

    .line 349
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 350
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 352
    .end local v0    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 353
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 355
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 357
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 111
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".STOP_PLAYER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 113
    const/4 v5, 0x2

    .line 146
    :goto_0
    return v5

    .line 115
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 116
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v3, :cond_1

    .line 117
    new-instance v6, Lorg/telegram/messenger/MusicPlayerService$2;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MusicPlayerService$2;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    :try_start_1
    sget-boolean v6, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    if-eqz v6, :cond_3

    .line 126
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .local v4, "remoteComponentName":Landroid/content/ComponentName;
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v6, :cond_2

    .line 129
    iget-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 133
    .local v2, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/media/RemoteControlClient;

    invoke-direct {v6, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 134
    iget-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 136
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v7, 0xbd

    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    .end local v4    # "remoteComponentName":Landroid/content/ComponentName;
    :cond_3
    :goto_1
    :try_start_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 138
    .restart local v4    # "remoteComponentName":Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public setListeners(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 330
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.previous"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 331
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0c004f

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 332
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.close"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 333
    const v1, 0x7f0c004b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 334
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.pause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 335
    const v1, 0x7f0c0050

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 336
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 337
    const v1, 0x7f0c0052

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 338
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 339
    const v1, 0x7f0c0051

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 340
    return-void
.end method
